source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/paths.vim

if exists('g:vscode')
    " VS Code extension 
    source $HOME/.config/nvim/vscode/settings.vim
else
    source $HOME/.config/nvim/keys/mappings.vim
    source $HOME/.config/nvim/themes/gruvbox.vim
    source $HOME/.config/nvim/modules/lsp.vim
    source $HOME/.config/nvim/modules/ctrlp.vim
    source $HOME/.config/nvim/modules/tableMode.vim
    source $HOME/.config/nvim/modules/todo.vim
    source $HOME/.config/nvim/modules/undotree/undotree.vim
    source $HOME/.config/nvim/unmanaged/kanvim.vim
    source $HOME/.config/nvim/modules/codi.vim
    source $HOME/.config/nvim/modules/telescope.vim
    source $HOME/.config/nvim/modules/markdown.vim
    source $HOME/.config/nvim/modules/maximizer.vim
    source $HOME/.config/nvim/modules/latex.vim
    source $HOME/.config/nvim/modules/signify.vim
    luafile $HOME/.config/nvim/lua/compe-config.lua
    luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
    luafile $HOME/.config/nvim/lua/lsp/eslint-ls.lua
endif
