return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp realted plugins
  -- includes autocomplete and lsp suggestions
  use 'neovim/nvim-lspconfig'		-- nvim lsp implementaion plugin
  use 'kabouzeid/nvim-lspinstall'		-- utility for installing lsp servers
  use 'hrsh7th/nvim-compe'		-- autocompletion support
 -- use 'onsails/lspkind-nvim'		-- lsp gui suggestions
  use 'hrsh7th/vim-vsnip' -- snippets
  use 'hrsh7th/vim-vsnip-integ' -- snippet integrations

  -- utility (bloat)
  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use 'sbdchd/neoformat'
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use {'nvim-telescope/telescope-fzf-native.nvim', after = "telescope.nvim", run = 'make' }
  use 'vimwiki/vimwiki' -- not everyone's cup of tea, but useful
  use 'dkarter/bullets.vim'

  -- pretty (visual bloat)
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  use 'karb94/neoscroll.nvim' -- smooth scrolling
  use 'machakann/vim-highlightedyank'
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup { filetype_exclude = { "dashboard" }
      }
    end
  }

  -- cosmetic, but useful
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'norcalli/nvim-colorizer.lua'

  -- random specific stuff, to many this is useless
  use 'lervag/vimtex'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'} -- needs yarn installed
  use 'elkowar/yuck.vim'
  use 'simrat39/rust-tools.nvim'

  -- my colorscheme
  use 'rktjmp/lush.nvim' -- framework for making and testing the theme
  use '~/Documents/git-clones/toodark.nvim'

end)
