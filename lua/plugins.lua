vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- better bar
  use 'nvim-lualine/lualine.nvim'

  -- autocpompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- fuzzy finding
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }

  -- colorschemes
  use 'folke/tokyonight.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }

  -- neovim explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  -- managing & installing lsp servers
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- configuring lsp servers
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind.nvim'
  use { 'glepnir/lspsaga.nvim', branch = main }

  -- formatting & linting
  use 'jose-elias-alvarez/null-ls.nvim' -- configure formatters & linters
  use 'jayp0521/mason-null-ls.nvim' -- bridges gap b/w mason & null-ls

  -- git integration
  use 'lewis6991/gitsigns.nvim'

  -- syntax highlighting for vlang --
  use 'cheap-glitch/vim-v'
end)
