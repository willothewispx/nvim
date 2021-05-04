return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Autoload lua/plugin/*.lua
  use 'tjdevries/astronauta.nvim'

  -- THEME gruvbox-material
  use 'sainnhe/gruvbox-material'

  -- THEME Tokyo Night
  use 'folke/tokyonight.nvim'

  -- Tree-sitter
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {'nvim-treesitter/nvim-treesitter-refactor'}
  }

  -- Statusline
  use 'hoob3rt/lualine.nvim'

  -- Bufferline
  use 'akinsho/nvim-bufferline.lua'

  -- Devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use {'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzy-native.nvim'}}
  }

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- LSP Autocomletion
  use 'hrsh7th/nvim-compe'
  use 'tzachar/compe-tabnine'

  -- LSP install language server
  use 'kabouzeid/nvim-lspinstall'

  -- VSCode-like pictograms
  use 'onsails/lspkind-nvim'

  -- Lsp UI
  use 'glepnir/lspsaga.nvim'

  -- Filetree
  use 'kyazdani42/nvim-tree.lua'

  -- Projekt specific working directory
  use 'airblade/vim-rooter'

  -- GIT signs
  use 'lewis6991/gitsigns.nvim'

  -- Comments
  use 'b3nj5m1n/kommentary'

  -- Surround
  use 'tpope/vim-surround'

  -- Indentlines
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

  -- Colored parentheses
  use 'p00f/nvim-ts-rainbow'

  -- Auto pairs
  use 'windwp/nvim-autopairs'

  -- Undotree
  use 'mbbill/undotree'

  -- Git
  use 'TimUntersberger/neogit'

  -- Gid diffs
  use 'sindrets/diffview.nvim'

  -- Peek registers
  use 'gennaro-tedesco/nvim-peekup'

  -- Quickly move in document
  use 'phaazon/hop.nvim'

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'

  -- Startpage
  use 'mhinz/vim-startify'

  -- LaTeX
  use {'lervag/vimtex', ft = 'tex'}

  -- VimWiki
  use 'vimwiki/vimwiki'

end)
