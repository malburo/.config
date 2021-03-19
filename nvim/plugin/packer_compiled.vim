" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lap00822/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["base16-vim"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\b\0\0196\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1K\0\1\0@hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/base16-vim"
  },
  ["defx-git"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx-git"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/defx.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\28\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0004\4\3\0005\5\n\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\4=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\17forest_night\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim�\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3�+\1\2\0L\1\2\0X\1\2�+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0�\3\1\0\4\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0029\1\n\0009\1\v\0019\1\f\1+\2\2\0=\2\r\0013\1\14\0003\2\15\0K\0\1\0\0\0\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\vsource\1\0\t\nspell\2\tpath\2\vbuffer\2\18snippets_nvim\2\rnvim_lua\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\2\1\0\v\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\1\0\5\f\0\6\0\18\v\3\0\0X\5\1�+\3\2\0\v\4\0\0X\5\1�+\4\1\0006\5\0\0009\5\1\0059\5\2\5)\a\0\0\18\b\0\0\18\t\1\0\18\n\2\0005\v\3\0=\3\4\v=\4\5\vB\5\6\1K\0\1\0\texpr\fnoremap\1\0\1\vsilent\2\24nvim_buf_set_keymap\bapi\bvim�\2\0\5\n\0\14\0,\v\0\0\0X\5\2�\v\2\0\0X\5\1�K\0\1\0006\5\0\0009\5\1\0059\5\2\5\18\a\4\0'\b\3\0B\5\3\2\14\0\5\0X\5\30�6\5\0\0009\5\4\0059\5\5\5B\5\1\0026\6\0\0009\6\6\0069\6\a\0069\6\b\6\18\b\2\0\18\t\4\0B\6\3\0016\6\0\0009\6\4\0069\6\t\6\18\b\5\0B\6\2\0016\6\0\0009\6\1\0069\6\n\6B\6\1\2\5\4\6\0X\6\b�6\6\0\0009\6\v\6'\b\f\0B\6\2\0016\6\0\0009\6\v\6'\b\r\0B\6\2\1K\0\1\0\14GitGutter\22noautocmd :update\bcmd\25nvim_get_current_buf\16winrestview\21apply_text_edits\tutil\blsp\16winsaveview\afn\rmodified\24nvim_buf_get_option\bapi\bvim�\1\2\0\4\0\t\0\0196\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0029\2\4\0025\3\5\0B\0\3\2G\2\0\0A\0\0\0016\0\6\0006\2\0\0009\2\1\0029\2\3\0029\2\a\0025\3\b\0B\0\3\1K\0\1\0\1\0\1\17open_loclist\1\16set_loclist\npcall\1\0\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith\blsp\bvimf\0\1\6\0\a\0\v6\1\0\0009\1\1\0016\2\2\0009\2\3\2'\4\4\0006\5\0\0009\5\5\0059\5\6\5B\2\3\2<\0\2\1K\0\1\0\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\1\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\2\0009\1\3\1'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\1\3\0028\0\1\0\14\0\0\0X\0\18�6\0\0\0009\0\a\0009\0\b\0009\0\t\0006\2\0\0009\2\1\0026\3\2\0009\3\3\3'\5\n\0006\6\0\0009\6\5\0069\6\6\6B\3\3\0028\2\3\2\14\0\2\0X\3\1�4\2\0\0B\0\2\1K\0\1\0\22format_options_%s\15formatting\bbuf\blsp\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\f\0\1\6\1.\0�\0019\1\0\0009\1\1\1\15\0\1\0X\2\17�-\1\0\0'\3\2\0'\4\3\0'\5\4\0B\1\4\0016\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\n\1\15\0\1\0X\2\16�6\1\5\0009\1\6\1'\3\v\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\f\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\r\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\14\0'\5\15\0B\1\4\0019\1\0\0009\1\16\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\17\0'\5\18\0B\1\4\0019\1\0\0009\1\19\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\20\0'\5\21\0B\1\4\1-\1\0\0'\3\2\0'\4\22\0'\5\23\0B\1\4\1-\1\0\0'\3\2\0'\4\24\0'\5\25\0B\1\4\1-\1\0\0'\3\2\0'\4\26\0'\5\27\0B\1\4\1-\1\0\0'\3\2\0'\4\28\0'\5\29\0B\1\4\1-\1\0\0'\3\2\0'\4\30\0'\5\31\0B\1\4\1-\1\0\0'\3\2\0'\4 \0'\5!\0B\1\4\1-\1\0\0'\3\2\0'\4\"\0'\5#\0B\1\4\1-\1\0\0'\3\2\0'\4$\0'\5%\0B\1\4\1-\1\0\0'\3\2\0'\4&\0'\5'\0B\1\4\1-\1\0\0'\3\2\0'\4(\0'\5)\0B\1\4\1-\1\0\0'\3\2\0'\4*\0'\5+\0B\1\4\1-\1\0\0'\3\2\0'\4,\0'\5-\0B\1\4\1K\0\1\0\1�2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>s*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\vrename%<cmd>lua vim.lsp.buf.hover()<CR>\6K\nhover*<cmd>lua vim.lsp.buf.definition()<CR>\agd\20goto_definition3autocmd BufWritePost <buffer> lua formatting()\19augroup Format\24document_formatting\16augroup END\24autocmd! * <buffer>\23augroup CodeAction\bcmd\bvim+<Cmd>lua vim.lsp.buf.code_action()<CR>\n<C-e>\6n\16code_action\26resolved_capabilitiesO\0\1\4\1\2\0\a9\1\0\0+\2\1\0=\2\1\1-\1\0\0\18\3\0\0B\1\2\1K\0\1\0\3�\24document_formatting\26resolved_capabilities�\f\1\0\14\0J\0�\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0026\2\3\0009\2\4\0029\2\5\0023\3\t\0=\3\b\0025\2\n\0006\3\3\0009\3\v\3=\2\f\0036\3\3\0009\3\v\3=\2\r\0036\3\3\0009\3\v\3=\2\14\0036\3\3\0009\3\v\3=\2\15\0036\3\3\0009\3\v\3=\2\16\0036\3\3\0009\3\v\3=\2\17\0036\3\3\0009\3\v\3=\2\18\0036\3\3\0009\3\v\3=\2\19\0036\3\3\0009\3\v\3=\2\20\0036\3\3\0009\3\v\3=\2\21\0033\3\22\0007\3\23\0006\3\3\0009\3\24\3'\5\25\0B\3\2\0016\3\3\0009\3\24\3'\5\26\0B\3\2\0016\3\27\0003\4\29\0=\4\28\0033\3\30\0009\4\31\0009\4 \0045\6\"\0003\a!\0=\a#\6B\4\2\0019\4$\0009\4 \0045\6%\0=\3#\6B\4\2\0019\4&\0009\4 \0045\6'\0=\3#\0065\a(\0=\a\24\6B\4\2\0019\4)\0009\4 \0045\6*\0=\3#\6B\4\2\0019\4+\0009\4 \0045\6,\0=\3#\6B\4\2\0019\4-\0009\4 \0045\6.\0=\3#\6B\4\2\0019\4/\0009\4 \0045\0060\0=\3#\6B\4\2\0016\4\0\0'\0061\0B\4\2\0026\5\0\0'\a2\0B\5\2\0026\6\0\0'\b3\0B\6\2\0026\a\0\0'\t4\0B\a\2\0029\b5\0009\b \b5\n6\0=\3#\n5\v7\0=\v8\n5\v:\0005\f9\0=\f;\v5\f<\0004\r\3\0>\a\1\r=\r=\f4\r\3\0>\4\1\r>\5\2\r=\r>\f4\r\3\0>\4\1\r>\5\2\r=\r?\f4\r\3\0>\4\1\r>\5\2\r=\r@\f4\r\3\0>\4\1\r>\5\2\r=\rA\f4\r\3\0>\4\1\r=\rB\f4\r\3\0>\4\1\r=\rC\f4\r\3\0>\4\1\r=\r-\f4\r\3\0>\4\1\r=\rD\f4\r\3\0>\4\1\r=\rE\f4\r\3\0>\4\1\r=\rF\f4\r\3\0>\6\1\r=\rG\f=\fH\v=\vI\nB\b\2\0012\0\0�K\0\1\0\rsettings\14languages\ash\rmarkdown\bcss\tscss\tjson\tyaml\20javascriptreact\20typescriptreact\15javascript\15typescript\6=\1\0\0\16rootMarkers\1\0\0\1\2\0\0\n.git/\17init_options\1\0\1\23documentFormatting\2\1\0\0\befm\17efm/misspell\19efm/shellcheck\15efm/eslint\17efm/prettier\1\0\0\vbashls\1\0\0\thtml\1\0\0\18rust_analyzer\1\0\0\ncssls\1\3\0\0\31vscode-json-languageserver\f--stdio\1\0\0\vjsonls\1\0\0\nvimls\14on_attach\1\0\0\0\nsetup\rtsserver\0\0\15formatting\a_G2command! FormatEnable lua FormatToggle(false)2command! FormatDisable lua FormatToggle(true)\bcmd\17FormatToggle\0\28format_options_markdown\24format_options_yaml\24format_options_html\24format_options_scss\23format_options_css\24format_options_json#format_options_javascriptreact#format_options_typescriptreact\30format_options_javascript\30format_options_typescript\6g\1\0\4\16singleQuote\2\rtabWidth\3\2\21configPrecedence\16prefer-file\18trailingComma\ball\0$textDocument/publishDiagnostics\0\28textDocument/formatting\rhandlers\blsp\bvim\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\venable\2\20persist_queries\1\15updatetime\3\25\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ticon\b\tname\tlock\ncolor\f#5c6370\bmp4\1\0\3\ticon\b\tname\bmp4\ncolor\f#5c6370\bmp3\1\0\3\ticon\b\tname\bmp3\ncolor\f#566370\btxt\1\0\3\ticon\b\tname\ttext\ncolor\f#61afef\bmap\1\0\3\ticon\b\tname\btxt\ncolor\f#566370\taxml\1\0\3\ticon\b\tname\taxml\ncolor\f#f76c7c\ttxml\1\0\3\ticon\b\tname\ttxml\ncolor\f#f76c7c\bxml\1\0\3\ticon\b\tname\bxml\ncolor\f#f76c7c\tacss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\ttcss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\bcss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\thtml\1\0\0\1\0\3\ticon\b\tname\thtml\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    config = { "\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\1\0=\1\b\0K\0\1\0\21rnvimr_ex_enable\6g\1\0\1\fnoremap\2\22:RnvimrToggle<CR>\14<leader>r\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\r\0\0\b\0=\0k6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\16\0+\1\2\0=\1\17\0006\0\18\0'\2\19\0B\0\2\0026\1\18\0'\3\20\0B\1\2\0029\1\21\0015\3;\0005\4\28\0005\5\25\0005\6\23\0009\a\22\0=\a\24\6=\6\26\0055\6\27\0009\a\22\0=\a\24\6=\6\3\5=\5\29\0045\5\30\0=\5\31\0045\5!\0005\6 \0=\6\"\0055\6#\0=\6$\5=\5%\0046\5\18\0'\a&\0B\5\2\0029\5'\5=\5(\0045\5)\0=\5*\0046\5\18\0'\a&\0B\5\2\0029\5+\5=\5,\0044\5\0\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0046\5\18\0'\a2\0B\5\2\0029\0053\0059\0054\5=\0055\0046\5\18\0'\a2\0B\5\2\0029\0056\0059\0054\5=\0057\0046\5\18\0'\a2\0B\5\2\0029\0058\0059\0054\5=\0059\0046\5\18\0'\a2\0B\5\2\0029\5:\5=\5:\4=\4<\3B\1\2\1K\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\t\0\0\16autoload/.*\20node_modules/.*\15plugged/.*\15android/.*\vios/.*\rbuild/.*\fdist/.*\f.git/.*\16file_sorter\19get_fuzzy_file\22telescope.sorters\20layout_defaults\rvertical\1\0\1\vmirror\1\15horizontal\1\0\0\1\0\1\vmirror\1\22vimgrep_arguments\1\t\0\0\arg\r--hidden\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\16\20layout_strategy\15horizontal\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\a> \18results_width\4����\t����\3\18prompt_prefix\a> \20prompt_position\vbottom\19results_height\3\1\19preview_cutoff\3<\rwinblend\3\0\17shorten_path\2\ruse_less\2\nwidth\4\0����\3\1\0\0\6i\1\0\0\n<esc>\1\0\0\nclose\nsetup\14telescope\22telescope.actions\frequire\18termguicolors\6o\1\0\1\fnoremap\2\29:Telescope help_tags<cr>\15<leader>fh\1\0\1\fnoremap\2\27:Telescope buffers<cr>\14<leader>b\1\0\1\fnoremap\2G:Telescope live_grep find_command=rg,--ignore,--hidden,--files<cr>\15<leader>ff\1\0\1\fnoremap\2H:Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>\14<leader>p\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-closetag"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0K\0\1\0\6>\22closetag_shortcut%closetag_emptyTags_caseSensitive\21*.jsx,*.js,*.tsx\29closetag_xhtml_filenames+*.html,*.xml,*.txml,*.axml,*.jsx,*.tsx\23closetag_filenames\6g\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\14\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\b\0)\1\1\0=\1\t\0006\0\0\0009\0\b\0)\1\1\0=\1\n\0006\0\0\0009\0\b\0)\1\1\0=\1\v\0006\0\0\0009\0\b\0'\1\r\0=\1\f\0K\0\1\0\n🔎 \17sneak#prompt\17sneak#s_next\21sneak#use_ic_scs\16sneak#label\6g\18<Plug>Sneak_;\ags\18<Plug>Sneak_,\agS\5\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/lap00822/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

-- Config for: nvim-web-devicons
try_loadstring("\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\ticon\b\tname\tlock\ncolor\f#5c6370\bmp4\1\0\3\ticon\b\tname\bmp4\ncolor\f#5c6370\bmp3\1\0\3\ticon\b\tname\bmp3\ncolor\f#566370\btxt\1\0\3\ticon\b\tname\ttext\ncolor\f#61afef\bmap\1\0\3\ticon\b\tname\btxt\ncolor\f#566370\taxml\1\0\3\ticon\b\tname\taxml\ncolor\f#f76c7c\ttxml\1\0\3\ticon\b\tname\ttxml\ncolor\f#f76c7c\bxml\1\0\3\ticon\b\tname\bxml\ncolor\f#f76c7c\tacss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\ttcss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\bcss\1\0\3\ticon\b\tname\bcss\ncolor\f#61afef\thtml\1\0\0\1\0\3\ticon\b\tname\thtml\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n�\4\0\0\6\0\28\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0004\4\3\0005\5\n\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\4=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0004\4\0\0=\4\f\0034\4\0\0=\4\14\0035\4\25\0=\4\16\0035\4\26\0=\4\18\0034\4\0\0=\4\20\0034\4\0\0=\4\22\3=\3\27\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\17forest_night\nsetup\flualine\frequire\0", "config", "lualine.nvim")
-- Config for: vim-vsnip
try_loadstring("\27LJ\2\nK\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\28~/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
-- Config for: rnvimr
try_loadstring("\27LJ\2\n�\1\0\0\6\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\1\0=\1\b\0K\0\1\0\21rnvimr_ex_enable\6g\1\0\1\fnoremap\2\22:RnvimrToggle<CR>\14<leader>r\6n\20nvim_set_keymap\bapi\bvim\0", "config", "rnvimr")
-- Config for: nvim-compe
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim�\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3�+\1\2\0L\1\2\0X\1\2�+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0�\3\1\0\4\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0009\0\t\0B\0\1\0029\1\n\0009\1\v\0019\1\f\1+\2\2\0=\2\r\0013\1\14\0003\2\15\0K\0\1\0\0\0\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\vsource\1\0\t\nspell\2\tpath\2\vbuffer\2\18snippets_nvim\2\rnvim_lua\2\rnvim_lsp\2\nvsnip\2\tcalc\2\ttags\2\1\0\v\15min_length\3\1\17autocomplete\2\fenabled\2\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3�\3\19source_timeout\3�\1\18throttle_time\3P\14preselect\venable\nsetup\ncompe\frequire\0", "config", "nvim-compe")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n9\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\t<cr>\18compe#confirm\afn\bvim�\2\1\0\4\1\f\2'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\27�6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\t�6\0\0\0009\0\1\0009\0\5\0B\0\1\1-\0\0\0009\0\6\0'\2\a\0002\0\17�X\0\15�6\0\0\0009\0\b\0003\2\t\0)\3\20\0B\0\3\1-\0\0\0009\0\6\0'\2\n\0002\0\0�D\0\2\0X\0\4�-\0\0\0009\0\v\0002\0\0�D\0\1\0K\0\1\0D\0\2\0\1�\26check_break_line_char\n<c-n>\0\rdefer_fn\n<c-y>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0����\31�\2\1\0\b\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\1\0B\1\2\0026\2\t\0004\3\0\0=\3\n\0026\2\6\0009\2\v\2'\3\r\0=\3\f\0026\2\n\0003\3\15\0=\3\14\2\18\2\0\0'\4\16\0'\5\17\0'\6\18\0005\a\19\0B\2\5\0012\0\0�K\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\20nvim_set_keymap\bapi\bvim\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n�\r\0\0\b\0=\0k6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\16\0+\1\2\0=\1\17\0006\0\18\0'\2\19\0B\0\2\0026\1\18\0'\3\20\0B\1\2\0029\1\21\0015\3;\0005\4\28\0005\5\25\0005\6\23\0009\a\22\0=\a\24\6=\6\26\0055\6\27\0009\a\22\0=\a\24\6=\6\3\5=\5\29\0045\5\30\0=\5\31\0045\5!\0005\6 \0=\6\"\0055\6#\0=\6$\5=\5%\0046\5\18\0'\a&\0B\5\2\0029\5'\5=\5(\0045\5)\0=\5*\0046\5\18\0'\a&\0B\5\2\0029\5+\5=\5,\0044\5\0\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0046\5\18\0'\a2\0B\5\2\0029\0053\0059\0054\5=\0055\0046\5\18\0'\a2\0B\5\2\0029\0056\0059\0054\5=\0057\0046\5\18\0'\a2\0B\5\2\0029\0058\0059\0054\5=\0059\0046\5\18\0'\a2\0B\5\2\0029\5:\5=\5:\4=\4<\3B\1\2\1K\0\1\0\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\t\0\0\16autoload/.*\20node_modules/.*\15plugged/.*\15android/.*\vios/.*\rbuild/.*\fdist/.*\f.git/.*\16file_sorter\19get_fuzzy_file\22telescope.sorters\20layout_defaults\rvertical\1\0\1\vmirror\1\15horizontal\1\0\0\1\0\1\vmirror\1\22vimgrep_arguments\1\t\0\0\arg\r--hidden\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\rmappings\1\0\16\20layout_strategy\15horizontal\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\a> \18results_width\4����\t����\3\18prompt_prefix\a> \20prompt_position\vbottom\19results_height\3\1\19preview_cutoff\3<\rwinblend\3\0\17shorten_path\2\ruse_less\2\nwidth\4\0����\3\1\0\0\6i\1\0\0\n<esc>\1\0\0\nclose\nsetup\14telescope\22telescope.actions\frequire\18termguicolors\6o\1\0\1\fnoremap\2\29:Telescope help_tags<cr>\15<leader>fh\1\0\1\fnoremap\2\27:Telescope buffers<cr>\14<leader>b\1\0\1\fnoremap\2G:Telescope live_grep find_command=rg,--ignore,--hidden,--files<cr>\15<leader>ff\1\0\1\fnoremap\2H:Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>\14<leader>p\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n�\2\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\venable\2\20persist_queries\1\15updatetime\3\25\14highlight\1\0\2\venable\2\21use_languagetree\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: vim-closetag
try_loadstring("\27LJ\2\n�\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0K\0\1\0\6>\22closetag_shortcut%closetag_emptyTags_caseSensitive\21*.jsx,*.js,*.tsx\29closetag_xhtml_filenames+*.html,*.xml,*.txml,*.axml,*.jsx,*.tsx\23closetag_filenames\6g\bvim\0", "config", "vim-closetag")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: vim-sneak
try_loadstring("\27LJ\2\n�\2\0\0\6\0\14\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0004\5\0\0B\0\5\0016\0\0\0009\0\b\0)\1\1\0=\1\t\0006\0\0\0009\0\b\0)\1\1\0=\1\n\0006\0\0\0009\0\b\0)\1\1\0=\1\v\0006\0\0\0009\0\b\0'\1\r\0=\1\f\0K\0\1\0\n🔎 \17sneak#prompt\17sneak#s_next\21sneak#use_ic_scs\16sneak#label\6g\18<Plug>Sneak_;\ags\18<Plug>Sneak_,\agS\5\20nvim_set_keymap\bapi\bvim\0", "config", "vim-sneak")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n�\1\0\5\f\0\6\0\18\v\3\0\0X\5\1�+\3\2\0\v\4\0\0X\5\1�+\4\1\0006\5\0\0009\5\1\0059\5\2\5)\a\0\0\18\b\0\0\18\t\1\0\18\n\2\0005\v\3\0=\3\4\v=\4\5\vB\5\6\1K\0\1\0\texpr\fnoremap\1\0\1\vsilent\2\24nvim_buf_set_keymap\bapi\bvim�\2\0\5\n\0\14\0,\v\0\0\0X\5\2�\v\2\0\0X\5\1�K\0\1\0006\5\0\0009\5\1\0059\5\2\5\18\a\4\0'\b\3\0B\5\3\2\14\0\5\0X\5\30�6\5\0\0009\5\4\0059\5\5\5B\5\1\0026\6\0\0009\6\6\0069\6\a\0069\6\b\6\18\b\2\0\18\t\4\0B\6\3\0016\6\0\0009\6\4\0069\6\t\6\18\b\5\0B\6\2\0016\6\0\0009\6\1\0069\6\n\6B\6\1\2\5\4\6\0X\6\b�6\6\0\0009\6\v\6'\b\f\0B\6\2\0016\6\0\0009\6\v\6'\b\r\0B\6\2\1K\0\1\0\14GitGutter\22noautocmd :update\bcmd\25nvim_get_current_buf\16winrestview\21apply_text_edits\tutil\blsp\16winsaveview\afn\rmodified\24nvim_buf_get_option\bapi\bvim�\1\2\0\4\0\t\0\0196\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0029\2\4\0025\3\5\0B\0\3\2G\2\0\0A\0\0\0016\0\6\0006\2\0\0009\2\1\0029\2\3\0029\2\a\0025\3\b\0B\0\3\1K\0\1\0\1\0\1\17open_loclist\1\16set_loclist\npcall\1\0\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith\blsp\bvimf\0\1\6\0\a\0\v6\1\0\0009\1\1\0016\2\2\0009\2\3\2'\4\4\0006\5\0\0009\5\5\0059\5\6\5B\2\3\2<\0\2\1K\0\1\0\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\1\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\2\0009\1\3\1'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\1\3\0028\0\1\0\14\0\0\0X\0\18�6\0\0\0009\0\a\0009\0\b\0009\0\t\0006\2\0\0009\2\1\0026\3\2\0009\3\3\3'\5\n\0006\6\0\0009\6\5\0069\6\6\6B\3\3\0028\2\3\2\14\0\2\0X\3\1�4\2\0\0B\0\2\1K\0\1\0\22format_options_%s\15formatting\bbuf\blsp\rfiletype\abo\23format_disabled_%s\vformat\vstring\6g\bvim�\f\0\1\6\1.\0�\0019\1\0\0009\1\1\1\15\0\1\0X\2\17�-\1\0\0'\3\2\0'\4\3\0'\5\4\0B\1\4\0016\1\5\0009\1\6\1'\3\a\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\n\1\15\0\1\0X\2\16�6\1\5\0009\1\6\1'\3\v\0B\1\2\0016\1\5\0009\1\6\1'\3\b\0B\1\2\0016\1\5\0009\1\6\1'\3\f\0B\1\2\0016\1\5\0009\1\6\1'\3\t\0B\1\2\0019\1\0\0009\1\r\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\14\0'\5\15\0B\1\4\0019\1\0\0009\1\16\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\17\0'\5\18\0B\1\4\0019\1\0\0009\1\19\1\15\0\1\0X\2\5�-\1\0\0'\3\2\0'\4\20\0'\5\21\0B\1\4\1-\1\0\0'\3\2\0'\4\22\0'\5\23\0B\1\4\1-\1\0\0'\3\2\0'\4\24\0'\5\25\0B\1\4\1-\1\0\0'\3\2\0'\4\26\0'\5\27\0B\1\4\1-\1\0\0'\3\2\0'\4\28\0'\5\29\0B\1\4\1-\1\0\0'\3\2\0'\4\30\0'\5\31\0B\1\4\1-\1\0\0'\3\2\0'\4 \0'\5!\0B\1\4\1-\1\0\0'\3\2\0'\4\"\0'\5#\0B\1\4\1-\1\0\0'\3\2\0'\4$\0'\5%\0B\1\4\1-\1\0\0'\3\2\0'\4&\0'\5'\0B\1\4\1-\1\0\0'\3\2\0'\4(\0'\5)\0B\1\4\1-\1\0\0'\3\2\0'\4*\0'\5+\0B\1\4\1-\1\0\0'\3\2\0'\4,\0'\5-\0B\1\4\1K\0\1\0\1�2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>s*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn\vrename%<cmd>lua vim.lsp.buf.hover()<CR>\6K\nhover*<cmd>lua vim.lsp.buf.definition()<CR>\agd\20goto_definition3autocmd BufWritePost <buffer> lua formatting()\19augroup Format\24document_formatting\16augroup END\24autocmd! * <buffer>\23augroup CodeAction\bcmd\bvim+<Cmd>lua vim.lsp.buf.code_action()<CR>\n<C-e>\6n\16code_action\26resolved_capabilitiesO\0\1\4\1\2\0\a9\1\0\0+\2\1\0=\2\1\1-\1\0\0\18\3\0\0B\1\2\1K\0\1\0\3�\24document_formatting\26resolved_capabilities�\f\1\0\14\0J\0�\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0026\2\3\0009\2\4\0029\2\5\0023\3\t\0=\3\b\0025\2\n\0006\3\3\0009\3\v\3=\2\f\0036\3\3\0009\3\v\3=\2\r\0036\3\3\0009\3\v\3=\2\14\0036\3\3\0009\3\v\3=\2\15\0036\3\3\0009\3\v\3=\2\16\0036\3\3\0009\3\v\3=\2\17\0036\3\3\0009\3\v\3=\2\18\0036\3\3\0009\3\v\3=\2\19\0036\3\3\0009\3\v\3=\2\20\0036\3\3\0009\3\v\3=\2\21\0033\3\22\0007\3\23\0006\3\3\0009\3\24\3'\5\25\0B\3\2\0016\3\3\0009\3\24\3'\5\26\0B\3\2\0016\3\27\0003\4\29\0=\4\28\0033\3\30\0009\4\31\0009\4 \0045\6\"\0003\a!\0=\a#\6B\4\2\0019\4$\0009\4 \0045\6%\0=\3#\6B\4\2\0019\4&\0009\4 \0045\6'\0=\3#\0065\a(\0=\a\24\6B\4\2\0019\4)\0009\4 \0045\6*\0=\3#\6B\4\2\0019\4+\0009\4 \0045\6,\0=\3#\6B\4\2\0019\4-\0009\4 \0045\6.\0=\3#\6B\4\2\0019\4/\0009\4 \0045\0060\0=\3#\6B\4\2\0016\4\0\0'\0061\0B\4\2\0026\5\0\0'\a2\0B\5\2\0026\6\0\0'\b3\0B\6\2\0026\a\0\0'\t4\0B\a\2\0029\b5\0009\b \b5\n6\0=\3#\n5\v7\0=\v8\n5\v:\0005\f9\0=\f;\v5\f<\0004\r\3\0>\a\1\r=\r=\f4\r\3\0>\4\1\r>\5\2\r=\r>\f4\r\3\0>\4\1\r>\5\2\r=\r?\f4\r\3\0>\4\1\r>\5\2\r=\r@\f4\r\3\0>\4\1\r>\5\2\r=\rA\f4\r\3\0>\4\1\r=\rB\f4\r\3\0>\4\1\r=\rC\f4\r\3\0>\4\1\r=\r-\f4\r\3\0>\4\1\r=\rD\f4\r\3\0>\4\1\r=\rE\f4\r\3\0>\4\1\r=\rF\f4\r\3\0>\6\1\r=\rG\f=\fH\v=\vI\nB\b\2\0012\0\0�K\0\1\0\rsettings\14languages\ash\rmarkdown\bcss\tscss\tjson\tyaml\20javascriptreact\20typescriptreact\15javascript\15typescript\6=\1\0\0\16rootMarkers\1\0\0\1\2\0\0\n.git/\17init_options\1\0\1\23documentFormatting\2\1\0\0\befm\17efm/misspell\19efm/shellcheck\15efm/eslint\17efm/prettier\1\0\0\vbashls\1\0\0\thtml\1\0\0\18rust_analyzer\1\0\0\ncssls\1\3\0\0\31vscode-json-languageserver\f--stdio\1\0\0\vjsonls\1\0\0\nvimls\14on_attach\1\0\0\0\nsetup\rtsserver\0\0\15formatting\a_G2command! FormatEnable lua FormatToggle(false)2command! FormatDisable lua FormatToggle(true)\bcmd\17FormatToggle\0\28format_options_markdown\24format_options_yaml\24format_options_html\24format_options_scss\23format_options_css\24format_options_json#format_options_javascriptreact#format_options_typescriptreact\30format_options_javascript\30format_options_typescript\6g\1\0\4\16singleQuote\2\rtabWidth\3\2\21configPrecedence\16prefer-file\18trailingComma\ball\0$textDocument/publishDiagnostics\0\28textDocument/formatting\rhandlers\blsp\bvim\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
-- Config for: base16-vim
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\0196\0\0\0009\0\1\0006\1\0\0009\1\2\1+\2\2\0=\2\3\1\18\1\0\0'\3\4\0B\1\2\1\18\1\0\0'\3\5\0B\1\2\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1K\0\1\0@hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE@hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE'hi! Normal ctermbg=NONE guibg=NONE\29colorscheme base16-ocean\18termguicolors\6o\bcmd\bvim\0", "config", "base16-vim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
