return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'rose-pine/neovim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"} -- runs TsUpdate with `runs`
  use {
    'hoob3rt/lualine.nvim',                                  -- line at the end
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} -- buffer properly at the top of the screen
  use {
    'kyazdani42/nvim-tree.lua',                             -- for nvim tree folder manager
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {'windwp/nvim-ts-autotag'}                            -- automatically add ending part <html
  use {'p00f/nvim-ts-rainbow'}                              -- brackets are colored properly
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}                              -- key bindings
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{current_line_blame = true}
    end
  }
  use 'glepnir/dashboard-nvim'
  use "lukas-reineke/indent-blankline.nvim"
end)
