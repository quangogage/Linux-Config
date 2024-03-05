return {
    'olimorris/onedarkpro.nvim',
    '/nyoom-engineering/oxocarbon.nvim',
    'folke/tokyonight.nvim',
    {
        'maxmx03/fluoromachine.nvim',
        config = function()
            local fm = require 'fluoromachine'
            fm.setup {
                glow = false,
                theme = 'retrowave' -- 'fluoromachine' | 'retrowave' | 'delta'
            }

            vim.cmd.colorscheme('fluoromachine')
        end
    },
    -- 'sainnhe/gruvbox-material',
    --'gmr458/vscode_modern_theme.nvim',
    -- 'crispybaccoon/evergarden',
    -- 'rose-pine/neovim',
    -- 'HoNamDuong/hybrid.nvim',
}
