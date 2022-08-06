local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
<<<<<<< HEAD
    formatting.prettier, formatting.lua_format.with({
=======
    formatting.prettier.with {
      extra_filetypes = {"toml", "solidity"},
      extra_args = {"--no-semi", "--single-quote", "--jsx-single-quote"}
    }, formatting.stylua, formatting.lua_format.with({
>>>>>>> parent of fd93746 (Changes before resetting)
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
<<<<<<< HEAD
    }), formatting.isort, formatting.codespell.with({filetypes = {'markdown'}})
=======
    }), formatting.codespell.with({filetypes = {'markdown'}})
>>>>>>> parent of fd93746 (Changes before resetting)
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
