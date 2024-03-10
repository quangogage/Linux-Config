return {
    'olimorris/onedarkpro.nvim',
    '/nyoom-engineering/oxocarbon.nvim',
    'sainnhe/gruvbox-material',
    'gmr458/vscode_modern_theme.nvim',
    'sainnhe/sonokai',
    "Oniup/ignite.nvim",
    'crispybaccoon/evergarden',
    'rose-pine/neovim',
    'HoNamDuong/hybrid.nvim',
    'stankovictab/mgz.nvim',

    {
        "presindent/ethereal.nvim",
        opts = {
            -- Options for customization go here.
        },
        config = function(_, opts)
            vim.cmd [[colorscheme ethereal]]
        end,
    }
}
