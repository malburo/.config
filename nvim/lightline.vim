" LightLine

let g:lightline = {
\   'colorscheme': 'jellybeans',
\   'active': {
\    'left' : [[ 'mode', 'paste' ],
\              [ 'gitbranch' ],
\              [ 'filename' ]],
\    'right': [[ 'trailing' ],
\              [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'filetype', 'fileencoding', 'fileformat' ] ]
\   },
\   'tab': {
\     'active'   : ['tabnum'],
\     'inactive' : ['tabnum']
\   },
\   'tabline': {
\   'left'  : [['buffers']],
\   'right' : [['string1'], ['string2', 'smarttabs']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\   'left': '\u2502', 'right': '\u2502'
\   },
\   'component': {
\     'filename': '%<%{LightlineFileName()}'
\   },
\   'component_function': {
\     'gitbranch'    : 'LightlineFugitive',
\     'readonly'     : 'LightlineReadonly',
\     'fileformat'   : 'LightlineFileformat',
\     'filetype'     : 'LightlineFiletype',
\     'fileencoding' : 'LightlineFileEncoding',
\     'lineinfo'     : 'LightlineLineInfo',
\     'percent'      : 'LightlinePercent',
\     'mode'         : 'LightlineMode',
\   },
\   'component_expand': {
\     'buffers'   : 'lightline#bufferline#buffers',
\     'string1'   : 'String1',
\     'string2'   : 'String2',
\     'smarttabs' : 'SmartTabsIndicator',
\     'trailing'  : 'LightlineTrailingWhitespace',
\   },
\   'component_type': {
\   'buffers'  : 'tabsel',
\   'trailing' : 'warning'
\   },
\   'mode_map': {
\     'n'      : ' N0RMAL',
\     'i'      : ' INSERT',
\     'R'      : ' REPLACE',
\     'v'      : ' VISUAL',
\     'V'      : ' V-LINE',
\     "\<C-v>" : ' V-BL0CK',
\     'c'      : ' COMMAND',
\     's'      : ' SELECT',
\     'S'      : ' S-LINE',
\     "\<C-s>" : ' S-BL0CK',
\     't'      : ' TERMINAL',
\   }
\}

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    if exists('*fugitive#head')
      let branch = fugitive#head()
      return branch !=# '' ? ' ' . branch : ''
    endif
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) . ' ' : ''
  else
    return ''
  endif
endfunction

function! LightlineFiletype()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  else
    return ''
  endif
endfunction

function! LightlineFileEncoding()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    return &fileencoding
  else
    return ''
  endif
endfunction

function! LightlineLineInfo()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    let current_line = printf('%3s', line('.'))
    let current_col  = printf('%-3s', col('.'))
    let lineinfo     = ' ' . current_line . ':' . current_col
    return lineinfo
  else
    return ''
  endif
endfunction

function! LightlinePercent()
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    return printf(' %3s', (line('.') * 100 / line('$'))) . '%'
  else
    return ''
  endif
endfunction

function! LightlineFileName()
  let filename = expand('%')
  let modified = &modified ? '' : ''
  let readonly = &readonly
  if &filetype !=? 'defx' && &filetype !=? 'tagbar' && &filetype !=? 'taglist'
    if filename ==# ''
      return '[No Name]'
    endif

    let terms = split(filename, ':')
    if terms[0] ==# 'term'
      return '[' . terms[-1] . ']'
    endif

    return filename . ' ' . (readonly ? '' : modified)
  else
    return expand('%:t') ==# '__Tagbar__.1' ? '[tagbar]' :
         \ expand('%:t') ==# '__Tag_List__' ? '[taglist]' :
         \ &filetype ==# 'defx' ?  '[defx]' :
         \ ''
  endif
endfunction

function! LightlineMode()
  return expand('%:t') ==# '__Tagbar__.1' ? ' TAGBAR' :
       \ expand('%:t') ==# '__Tag_List__' ? ' TAGLIST' :
       \ &filetype ==# 'defx' ?  ' DEFX' :
       \ lightline#mode()
endfunction

function! String1()
  return ' BANDITHIJO.GITHUB.IO'
endfunction

function! String2()
  return 'BUFFERS'
endfunction

function! SmartTabsIndicator()
  let tabs = lightline#tab#tabnum(tabpagenr())
  let tab_total = tabpagenr('$')
  return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

function! LightlineTrailingWhitespace()
  if &filetype !=? 'defx'
    let status = lightline#trailing_whitespace#component()
    return status == 'trailing' ? '!' : ''
  else
    return ''
  endif
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

set showtabline=2  " Show tabline, 2 show, 1 hide
set guioptions-=e  " Don't use GUI tabline
