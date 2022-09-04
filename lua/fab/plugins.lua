local status, packer = pcall(require, "packer")
if (not status) then return end

vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "sainnhe/gruvbox-material"
    use "kyazdani42/nvim-web-devicons"
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "onsails/lspkind.nvim"
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "nvim-lua/plenary.nvim"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "dcampos/nvim-snippy"
    use "honza/vim-snippets"
    use "dcampos/cmp-snippy"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use "windwp/nvim-autopairs"
    use "nvim-lualine/lualine.nvim"
    use "terrortylor/nvim-comment"
    use "jose-elias-alvarez/null-ls.nvim"
    use {"goolord/alpha-nvim",
        requries = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require("alpha").setup(require("alpha.themes.startify").config)
        end
    }
    use {"j-hui/fidget.nvim", 
        config = function() 
            require("fidget").setup() 
        end
    }
    use {"kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async"}
    use {"yioneko/nvim-yati", requires = "nvim-treesitter/nvim-treesitter"}
    -- use {"romgrk/barbar.nvim", requires = "kyazdani42/nvim-web-devicons"}
end)
