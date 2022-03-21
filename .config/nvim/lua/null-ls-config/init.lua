local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  diagnostics.codespell,
  formatting.prettier.with {
    extra_filetypes = {"solidity"},
    extra_args = {"--no-semi", "--single-quote", "--jsx-single-quote"}
  }, formatting.stylua, formatting.codespell.with({filetypes = {'markdown'}}), diagnostics.codespell
}

null_ls.setup({
  sources = {
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
