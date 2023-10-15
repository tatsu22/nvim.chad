local overrides = require("custom.configs.overrides")


---@type NvPluginSpec[]
local plugins = {
    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    -- Override plugin definition options
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        'jose-elias-alvarez/null-ls.nvim',
        ft = 'go',
        opts = function()
            return require "custom.configs.null-ls"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
        init = function()
            vim.cmd('NvimTreeToggle')
        end,
    },

    -- New plugins
    {
        "xiyaowong/telescope-emoji.nvim",
        dependencies = { {'nvim-telescope/telescope.nvim'} },
    },

    {
        'nvim-treesitter/nvim-treesitter-context',
        ft = "go",
    },

    {
        "olexsmir/gopher.nvim",
        ft = "go",
        dependencies = { -- dependencies
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function(_, opts)
            require("gopher").setup(opts)
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end,
    },

    {
        'tpope/vim-fugitive',
        cmd = "Git",
    },

    {
        'tomiis4/Hypersonic.nvim',
        cmd = 'Hypersonic'
    },

    {
        'mbbill/undotree',
        cmd = "UndotreeToggle",
    },
    {
        'karb94/neoscroll.nvim',
        lazy = false,
        config = function()
            require "custom.configs.neoscroll"
        end,
    },

    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

    -- All NvChad plugins are lazy-loaded by default
    -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
    -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
    -- {
    --   "mg979/vim-visual-multi",
    --   lazy = false,
    -- }
}

return plugins
