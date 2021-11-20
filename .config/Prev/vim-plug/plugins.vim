" auto-install vim-plug
if empty(glob('~/.nvimLoads/autoload/plug.vim'))
  silent !curl -fLo ~/.nvimLoads/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.nvimLoads/autoload/plugged') 
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'



    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'



    " Color Theme
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }



    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons



    " And for line show:
    Plug 'vim-airline/vim-airline'




    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files

    " all about the markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " table mode
    Plug 'dhruvasagar/vim-table-mode'

    " maximizer
    Plug 'szw/vim-maximizer'

    " To Do
    Plug 'vuciv/vim-bujo'

    " Undo Tree
    Plug 'mbbill/undotree'


    " Prettier
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    Plug 'metakirby5/codi.vim'


    " Git integration 
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Vim-solidity
    Plug 'tomlion/vim-solidity'
    

call plug#end()
