local custom_attach = function(client)

  local buf_set_keymap = function(mode, key, result)
    vim.api.nvim_buf_set_keymap(0, mode, key, "<cmd>lua " .. result .. "<CR>", {noremap = true, silent = true})
  end
  -- vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  buf_set_keymap('n', 'gD', 'vim.lsp.buf.declaration()')
  buf_set_keymap('n', 'gd', 'vim.lsp.buf.definition()')
  buf_set_keymap('n', 'K', 'vim.lsp.buf.hover()')
  buf_set_keymap('n', 'gi', 'vim.lsp.buf.implementation()')
  buf_set_keymap('n', '<C-k>', 'vim.lsp.buf.signature_help()')
  buf_set_keymap('n', 'gtd', 'vim.lsp.buf.type_definition()')
  buf_set_keymap('n', '<leader>rn', 'vim.lsp.buf.rename()')
  buf_set_keymap('n', 'gr', 'vim.lsp.buf.references()')
  buf_set_keymap('n', '<leader>e', 'vim.lsp.diagnostic.show_line_diagnostics()')
  buf_set_keymap('n', '[d', 'vim.lsp.diagnostic.goto_prev()')
  buf_set_keymap('n', ']d', 'vim.lsp.diagnostic.goto_next()<CR>')
  buf_set_keymap('n', '<leader>q', 'vim.lsp.diagnostic.set_loclist()')

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap('n', '<leader>f', 'vim.lsp.buf.formatting()')
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap('n', '<leader>f', 'vim.lsp.buf.range_formatting()')
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Setup Lspistall
require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()

for _, server in pairs(servers) do
  require'lspconfig'[server].setup{ on_attach = custom_attach }
end

-- Lua
require'lspconfig'.lua.setup {
  on_attach = custom_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
        }
      }
    }
  }
}
