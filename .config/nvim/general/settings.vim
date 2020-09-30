" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing

set guicursor=
set relativenumber
set nu
set nohlsearch
set noerrorbells
set noswapfile
set undodir=$HOME/.config/nvim/general/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmatch
set noshowmode
set wrap
set hidden                              " (TextEdit might fail if hidden is not set(COC))
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages (Recommended by coc)
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion (recommended by coc)
set timeoutlen=500                      " By default timeoutlen is 1000 ms

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %



" ---------------- recommended by coc -------------------------
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" ------------------------------------------------------------
"
"
"
"
let g:vim_markdown_folding_disabled = 1
