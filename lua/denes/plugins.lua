return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Autoload lua/plugin/*.lua
  use 'tjdevries/astronauta.nvim'

  -- THEME gruvbox-material
  use 'sainnhe/gruvbox-material'

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

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- LSP Autocomletion
  use 'hrsh7th/nvim-compe'

  -- LSP install language server
  use 'kabouzeid/nvim-lspinstall'

	-- Filetree
	use 'kyazdani42/nvim-tree.lua'

	-- Projekt specific working directory
	use 'airblade/vim-rooter'

  -- GIT signs
  use 'lewis6991/gitsigns.nvim'

  -- Comments
  use 'b3nj5m1n/kommentary'

  -- Indentlines
  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

  -- Auto pairs
  use 'windwp/nvim-autopairs'

  -- Undotree
  use 'mbbill/undotree'

  -- Peek registers
  use 'gennaro-tedesco/nvim-peekup'

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- Startpage
  use 'mhinz/vim-startify'

  -- VimWiki
  use 'vimwiki/vimwiki'

end)

