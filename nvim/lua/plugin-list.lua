return {
    ---Git plugins.
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",

    ---New love2d plugin.
    {
        "S1M0N38/love2d.nvim",
        cmd = "LoveRun",
        lazy = true,
        opts = {},
        keys = {
            --{ "<leader>v",  desc = "LÖVE" },
            --{ "<leader>vv", "<cmd>LoveRun<cr>",  desc = "Run LÖVE" },
            --{ "<leader>vs", "<cmd>LoveStop<cr>", desc = "Stop LÖVE" },
            -- { "<F6>", "<cmd>LoveRun<cr>",  desc = "Run LÖVE" },
            -- { "<F7>", "<cmd>LoveStop<cr>", desc = "Stop LÖVE" },
        },
    },

    ---Copilot.
    { "https://github.com/github/copilot.vim" },

    ---LSP and required plugins.
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "williamboman/mason.nvim", config = true },
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
        },
    },

    ---"Zen mode".
    { "shortcuts/no-neck-pain.nvim",          version = "*" },

    ---Treesitter.
    ---Does lots of stuff, I just use it for better syntax highlighting.
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
    },

    ---Autocompletion & snippets.
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "rafamadriz/friendly-snippets",
        },
    },

    ---Useful plugin to show you pending keybinds.
    { "folke/which-key.nvim",          opts = {} },

    ---Directory browser.
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    ---"gc" to comment highlighted lines.
    { "numToStr/Comment.nvim",         opts = {} },

    ---Fuzzy Finder (files, lsp, etc).
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
            return vim.fn.executable("make") == 1
        end,
    },

    ---Harpoon, fast navigation.
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    ---Indent lines.
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    ---File tabs at top of window.
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    ---Align things very satisfyingly.
    ---:Tabularize/{char}
    { "godlygeek/tabular" },

    ---Transparency
    --"xiyaowong/transparent.nvim",

    ---Fancy comment boxes and other things.
    "LudoPinelli/comment-box.nvim",

    ---Status line
    "nvim-lualine/lualine.nvim",

    ---Leap - Fast search.
    "ggandor/leap.nvim",

    ---Animate cursor when jumping.
    -- "edluffy/specs.nvim",

    ---Improve lsp.
    ---Adds a lot of misc features
    ---Breadcrumbs.
    ---Symbol outline :Lspsaga outline
    ---Code actions <leader>ca
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require("lspsaga").setup({})
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },

    -- Move command line and make it look nice.
    -- {
    --     "folke/noice.nvim",
    --     event = "VeryLazy",
    --     opts = {
    --         -- add any options here
    --     },
    --     dependencies = {
    --         -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    --         "MunifTanjim/nui.nvim",
    --         -- OPTIONAL:
    --         --   `nvim-notify` is only needed, if you want to use the notification view.
    --         --   If not available, we use `mini` as the fallback
    --         "rcarriga/nvim-notify",
    --     }
    -- },

    ---Context
    ---Shows your current context...
    ---Kind of hard to explain.
    -- "nvim-treesitter/nvim-treesitter-context",

    ---Git diff
    "lewis6991/gitsigns.nvim",

    ---Automatically insert closing symbols.
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    ---Improved command line.
    {"gelguy/wilder.nvim"},

    ---Debug c++.
    "mfussenegger/nvim-dap",
}
