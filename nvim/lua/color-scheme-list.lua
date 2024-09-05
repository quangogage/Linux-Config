return {
    'olimorris/onedarkpro.nvim',
    'sainnhe/gruvbox-material',
    'gmr458/vscode_modern_theme.nvim',
    'sainnhe/sonokai',
    "Oniup/ignite.nvim",
    'crispybaccoon/evergarden',
    'rose-pine/neovim',
    'HoNamDuong/hybrid.nvim',
    'stankovictab/mgz.nvim',
    'ab-dx/ares.nvim',

    {
        "presindent/ethereal.nvim",
        opts = {
            -- Options for customization go here.
        },
        config = function(_, opts)
            vim.cmd [[colorscheme ethereal]]
        end,
    },

    {
        "tiagovla/tokyodark.nvim",
        opts = {
            -- custom options here
        },
        config = function(_, opts)
            require("tokyodark").setup(opts) -- calling setup is optional
            vim.cmd [[colorscheme tokyodark]]
        end,
    }
}
