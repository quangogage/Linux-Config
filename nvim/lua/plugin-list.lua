return
    {
        ---Git plugins.
        'tpope/vim-fugitive',
        'tpope/vim-rhubarb',

        ---Copilot.
        { 'https://github.com/github/copilot.vim' },

        ---LSP and required plugins.
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                { 'williamboman/mason.nvim', config = true },
                'williamboman/mason-lspconfig.nvim',
                'folke/neodev.nvim',
            },
        },

        ---Treesitter.
        ---Does lots of stuff, I just use it for better syntax highlighting.
        {
            'nvim-treesitter/nvim-treesitter',
            dependencies = {
                'nvim-treesitter/nvim-treesitter-textobjects',
            },
            build = ':TSUpdate',
        },

        ---Autocompletion & snippets.
        {
            'hrsh7th/nvim-cmp',
            dependencies = {
                'L3MON4D3/LuaSnip',
                'saadparwaiz1/cmp_luasnip',
                'hrsh7th/cmp-nvim-lsp',
                'rafamadriz/friendly-snippets',
            },
        },

        ---Useful plugin to show you pending keybinds.
        { 'folke/which-key.nvim', opts = {} },

        ---Directory browser.
        {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
            },
        },

        ---"gc" to comment highlighted lines.
        { 'numToStr/Comment.nvim', opts = {} },

        ---Fuzzy Finder (files, lsp, etc).
        { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },

        ---File tabs at top of window.
        {
            'romgrk/barbar.nvim',
            dependencies = {'lewis6991/gitsigns.nvim','nvim-tree/nvim-web-devicons'},
            init = function() vim.g.barbar_auto_setup = true end,
            version = '^1.0.0'
        },

        ---Align things very satisfyingly.
        { 'godlygeek/tabular' },

        ---Display symbols on right side of window.
        ---Can be nice for navigating large files.
        {'simrat39/symbols-outline.nvim'},

        ---Transparency
        'xiyaowong/transparent.nvim',


        -------------------
        --- [[ THEMES ]] --
        -------------------
        'navarasu/onedark.nvim',
        'sainnhe/everforest',
        'NLKNguyen/papercolor-theme',
        'dracula/vim',
    }
