local opts = { noremap = true, silent = true } ---Used often when setting up keybinds.
package.path = package.path .. ";../?.lua" ---Used to help source files in subdirectories.

--Default colorscheme.
local colorscheme = "carbonfox"

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ General config:                                         │
-- ╰─────────────────────────────────────────────────────────╯
---Linespace
vim.opt.linespace = 0

--Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set highlight on search
vim.o.hlsearch = false

---Highlight the current cursor line.
vim.o.cursorline = true

---Fill in blanks (tabs, spaces..)
vim.opt.listchars = {
    -- eol      = '¬',
    -- space    = '⸱',
    -- trail    = '•',
    -- extends  = '…',
    -- precedes = '…',
}
vim.opt.list = true

---Share clipboard with system.
vim.api.nvim_set_option("clipboard","unnamedplus")

---Set leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

---Better terminal colors.
vim.opt.termguicolors = true

---Show line numbers.
vim.wo.number = true
---Relative line numbers.
vim.wo.relativenumber = true

---Enable mouse
vim.o.mouse = "a"

---Tab spacing.
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

---Disable wrapping.
vim.o.wrap = false

-- Force scroll to keep cursor within 15 lines.
vim.o.scrolloff = 15

---Neotree.
---(Toggle file browser).
vim.keymap.set("n", '<leader>b', ':Neotree toggle show filesystem left<cr>', opts)

---Barbar.
---(Switch tabs).
vim.keymap.set("n", '<leader>h', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set("n", '<leader>l', '<Cmd>BufferNext<CR>', opts)


---Launch love2d directory.
vim.keymap.set("", "<F6>", ":w | :!love .<CR>",opts)

---Copilot completion.
---C-CR = Ctrl + Enter.
---C-Tab = Control + Tab.
vim.keymap.set("i", "<C-J>", "copilot#Accept('<CR>')", {noremap = true, silent = true, expr=true, replace_keycodes = false })

--Fuzzy finding in directory.
--Uses grep, only works on linux I think?
vim.keymap.set("n", "<C-s>", ":Telescope live_grep<CR>", opts)

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ Plugin initialization and setup:                        │
-- ╰─────────────────────────────────────────────────────────╯
require("init-plugins")()
require("init-lsp")()
require("plugin-setup-scripts.telescope")()
require("plugin-setup-scripts.treesitter")(require("nvim-treesitter.configs"))
require("plugin-setup-scripts.nvim-cmp")()
require("plugin-setup-scripts.indent-blankline")(require("ibl"))
require("plugin-setup-scripts.no-neck-pain")(require("no-neck-pain"))
require("neo-tree").setup()
require("plugin-setup-scripts.harpoon")(require("harpoon"))
require("plugin-setup-scripts.comment-box")()
require("lualine").setup()
require("leap").create_default_mappings()

---Symbols outline
---(Toggle symbols pane).
require("symbols-outline").setup()
vim.keymap.set("n", '<leader>v', '<Cmd>SymbolsOutline<CR>', opts)

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ Setup neovide                                           │
-- ╰─────────────────────────────────────────────────────────╯

require("neovide-config")()

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ Set default colorscheme.                                │
-- ╰─────────────────────────────────────────────────────────╯

vim.cmd('colorscheme ' ..colorscheme)
