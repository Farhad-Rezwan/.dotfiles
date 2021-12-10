vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10                        -- Makes popup menu smaller
vim.o.fileencoding = 'utf-8'                -- The encoding written to file
vim.o.ruler = true                          -- shows the cursor position all the time
vim.o.cmdheight = 2                         -- 
vim.o.splitbelow = true                     -- 
vim.o.splitright = true                     -- 
vim.opt.termguicolors = true                -- 
vim.o.conceallevel = 0                      -- 
vim.o.showtabline = 2                       -- 
vim.o.showmode = false                      -- 
vim.o.backup = false                        -- 
vim.o.writebackup = false                   -- 
vim.o.updatetime = 300                      -- 
vim.o.timeoutlen = 100                      -- 
vim.o.hlsearch = false                      -- 
vim.o.ignorecase = true                     -- 
vim.o.scrolloff = 3                         -- automatically scroll of at the third line
vim.o.sidescrolloff = 5                     -- l at the end of the line begins with next line
vim.o.mouse = "a"                           -- enable your mouse
vim.wo.wrap = false                         -- 
vim.wo.number = true                        -- 
vim.o.cursorline = true                     -- 
vim.wo.signcolumn = "yes"                   -- 
vim.o.tabstop = 2                           -- 
vim.bo.tabstop = 2                          -- 
vim.o.softtabstop = 2                       -- 
vim.o.shiftwidth = 2                        -- 
vim.bo.shiftwidth = 2                       -- 
vim.o.autoindent = true                     -- 
vim.bo.autoindent = true                    -- 
vim.o.expandtab = true                      -- 
vim.bo.expandtab = true                     -- 
-- set conceallevel=0                      " So that I can see `` in markdown files
-- set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
-- set expandtab                           " Converts tabs to spaces

