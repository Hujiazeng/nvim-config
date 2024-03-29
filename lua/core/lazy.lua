local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
    return
end
-- Start setup
lazy.setup({
    spec = {
{'hrsh7th/nvim-cmp',
event = "VeryLazy",
dependencies ={ { 'neovim/nvim-lspconfig' }, {'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },{'hrsh7th/cmp-cmdline' },{'hrsh7th/nvim-cmp'}, {'L3MON4D3/LuaSnip'}}
}
    , {
            "williamboman/mason.nvim"
        },
        { 'mfussenegger/nvim-dap' },
        { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    , {
            'nvimdev/dashboard-nvim',
            event = 'VimEnter',
            dependencies = { { 'nvim-tree/nvim-web-devicons' } }
        }
    , {
            "nvim-tree/nvim-tree.lua",
            version = "*",
            dependencies = { "nvim-tree/nvim-web-devicons" },
            config = function()
                require("nvim-tree").setup {}
            end
        },

        {
            'akinsho/bufferline.nvim',
            version = "*",
            dependencies = 'nvim-tree/nvim-web-devicons'
        },
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        },
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.6',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        {
            "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
        },
        {
            'sainnhe/everforest'
        }
    }
})
