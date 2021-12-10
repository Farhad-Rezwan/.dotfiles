if (false) 
	then
  require("vscode-config")
else
  require("options") -- require function = it sill search for lua/options/options
  require("plugins")
  require("keybindings")
  require("nvim-tree-config")
  require("lualine-config")
  require("bufferline-config")
  require("treesitter-config")
  require("autopairs-config")
  require("whichkey-config")
  require("telescope-config")
  require("colorizer-config")
  require("dashboard-config")
  require("blankline-config")
  require("lsp")
  require("formatter-config")
  vim.cmd("colorscheme rose-pine")
end