vim.g.nvim_tree_width = 25                -- vim.g sets global options
vim.g.nvim_tree_gitignore = 1             -- ignores everything in git ignore
vim.g.nvim_tree_indent_markers = 1        -- 
require'nvim-tree'.setup {
  auto_open = 1,                          -- open nvimtree whenever we open a folder, `nvim .`
  auto_close = 1                          -- closes nvim-tree once you close all the buffer
}
