vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'nvim-lualine/lualine.nvim'
    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly'
    }
end)
