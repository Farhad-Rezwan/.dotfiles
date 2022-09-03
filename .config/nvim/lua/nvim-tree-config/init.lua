vim.g.nvim_tree_width = 25

require("nvim-tree").setup {
  hijack_directories = {
    enable = true,
    auto_open = true,
  }
}


vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
