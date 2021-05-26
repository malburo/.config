return function()-- TODO figure out why this don't work
    local lsp_status = require('lsp-status')
    local protocol = require('vim.lsp.protocol')
    local trouble = require('trouble')
    local lspconfig = require('lspconfig')
    local saga = require('lspsaga')

    -- symbols for autocomplete
    vim.lsp.protocol.CompletionItemKind = {
        "   (Text) ",
        "   (Method)",
        "   (Function)",
        "   (Constructor)",
        " ﴲ  (Field)",
        "[] (Variable)",
        "   (Class)",
        " ﰮ  (Interface)",
        "   (Module)",
        " 襁 (Property)",
        "   (Unit)",
        "   (Value)",
        " 練 (Enum)",
        "   (Keyword)",
        "   (Snippet)",
        "   (Color)",
        "   (File)",
        "   (Reference)",
        "   (Folder)",
        "   (EnumMember)",
        " ﲀ  (Constant)",
        " ﳤ  (Struct)",
        "   (Event)",
        "   (Operator)",
        "   (TypeParameter)"
    }
    vim.fn.sign_define(
        "LspDiagnosticsSignError",
        {texthl = "LspDiagnosticsSignError", text = "", numhl = "RedSign"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignWarning",
        {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "YellowSign"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignHint",
        {texthl = "LspDiagnosticsSignHint", text = "", numhl = "BlueSign"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignInformation",
        {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "WhiteSign"}
    )
    lsp_status.config {
      kind_labels = kind_symbols,
      select_symbol = function(cursor_pos, symbol)
        if symbol.valueRange then
          local value_range = {
            ['start'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[1])},
            ['end'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[2])}
          }

          return require('lsp-status/util').in_range(cursor_pos, value_range)
        end
      end,
      current_function = false
    }
    -- Setup plugins
    lsp_status.register_progress()
    saga.init_lsp_saga { use_saga_diagnostic_sign = false }
    trouble.setup()

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = true,
        update_in_insert = false,
        underline = true
    })
    local function documentHighlight(client, bufnr)
        -- Set autocommands conditional on server_capabilities
        if client.resolved_capabilities.document_highlight then
            vim.api.nvim_exec(
                [[
          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e
          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e
          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e
          augroup lsp_document_highlight
            autocmd! * <buffer>
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
        ]],
                false
            )
        end
    end

    local function lspSignatureHelp()
          require "lsp_signature".on_attach({
              bind = true, -- This is mandatory, otherwise border config won't get registered.
                           -- If you want to hook lspsaga or other signature handler, pls set to false
              doc_lines = 10, -- only show one line of comment set to 0 if you do not want API comments be shown

              hint_enable = true, -- virtual hint enable
              hint_prefix = "🐼 ",  -- Panda for parameter
              hint_scheme = "String",

              handler_opts = {
                border = "none"   -- double, single, shadow, none
              },
              decorator = {"`", "`"}  -- or decorator = {"***", "***"}  decorator = {"**", "**"} see markdown help
          })
    end

    local function lspStatusConfig(client)
        lsp_status.on_attach(client)
        lsp_status.config {
          kind_labels = kind_symbols,
          select_symbol = function(cursor_pos, symbol)
            if symbol.valueRange then
              local value_range = {
                ['start'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[1])},
                ['end'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[2])}
              }

              return require('lsp-status/util').in_range(cursor_pos, value_range)
            end
          end,
          current_function = false
        }
    end

    local function lspSetup()
        vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
        vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
        vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
        vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
        vim.cmd("nnoremap <silent> rn <cmd>lua vim.lsp.buf.implementation()<CR>")
        vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
        vim.cmd("nnoremap <silent> rn :Lspsaga rename<CR>")
        vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
        vim.cmd('nnoremap <silent> gS <cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>')
        vim.cmd("nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>")
        vim.cmd("nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>")
        -- scroll down hover doc or scroll in definition preview
        vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
        -- scroll up hover doc
        vim.cmd("nnoremap <silent> <C-e> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")

        vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')


    end

    local function commonAttach(client, bufnr)
        documentHighlight(client, bufnr)
        lspStatusConfig(client)
        lspSignatureHelp()
        lspSetup()
    end

    local servers = {
      cssls = {
        filetypes = {"css", "scss", "less", "sass"},
        root_dir = lspconfig.util.root_pattern("package.json", ".git")
      },
      html = {},
      jsonls = {cmd = {'json-languageserver', '--stdio'}},
      rust_analyzer = {},
      tsserver = {},
      vimls = {}
    }

    local snippet_capabilities = {
      textDocument = {completion = {completionItem = {snippetSupport = true}}}
    }

    for server, config in pairs(servers) do
      if type(config) == 'function' then config = config() end
      config.on_attach = commonAttach
      config.capabilities = vim.tbl_deep_extend('keep', config.capabilities or {},lsp_status.capabilities, snippet_capabilities)
      lspconfig[server].setup(config)
    end
end
