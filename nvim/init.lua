if vim.g.vscode then return end -- Don't use any of this fancieness in the nvim vscode plugin.

local opts = { noremap = true, silent = true } ---Used often when setting up keybinds.
package.path = package.path .. ";../?.lua"     ---Used to help source files in subdirectories.

---Build keycommands.
--vim.keymap.set("", "<F6>", ":w | :!love .<CR>", opts)
vim.keymap.set("", "<F6>", ":w | :!bash build.sh<CR>", opts)

---Disable netrw - I use nvim-tree instead.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

---Force sign column to always be drawn, can help with random shakes.
vim.opt.signcolumn = "yes"

--Default colorscheme.
local colorscheme = "ignite"

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

---Color column (column on the right side of the screen).
vim.o.colorcolumn = "80"

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
vim.api.nvim_set_option("clipboard", "unnamedplus")

---Set leader key.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Force scroll to keep cursor within x lines.
vim.o.scrolloff = 7

---Toggle file browser
vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", opts)

---Tab navigation.
---(Switch tabs).
vim.keymap.set("n", "<leader>h", "<Cmd>BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<leader>l", "<Cmd>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<leader>W", "<Cmd>BufferLineCloseOthers<CR>", opts)
vim.keymap.set("n", "<leader>w", "<Cmd>BufferLineCloseOthers<CR>", opts)


---Copilot completion.
---C-CR = Ctrl + Enter.
---C-Tab = Control + Tab.
vim.keymap.set(
    "i",
    "<C-J>",
    "copilot#Accept('<CR>')",
    { noremap = true, silent = true, expr = true, replace_keycodes = false }
)

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
require("plugin-setup-scripts.harpoon")(require("harpoon"))
require("plugin-setup-scripts.comment-box")()
require("nvim-tree").setup()
require("leap").create_default_mappings()
require("lualine").setup({})
require("plugin-setup-scripts.noice")()
require("plugin-setup-scripts.nvim-notify")()
require("plugin-setup-scripts.bufferline")()


---
---Tabularize.
---Easy align to equals shortcut.
vim.keymap.set("v", "<leader>a", ":Tabularize /=<CR>", opts)

---Specs (animate cursor when jumping).
require("specs").setup({
    show_jumps = true,
    min_jump = 5,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects
        blend = 100, -- starting blend, between 0-100 (fully transparent), see :h winb
        width = 35,
        winhl = "PMenu",
        fader = require("specs").linear_fader,
        resizer = require("specs").slide_resizer,
    },
})

---
---Easily cycle through color schemes.
vim.keymap.set("n", "<C-c>", ":Telescope colorscheme<CR>", opts)

---
---Lspsaga
vim.keymap.set("n", "<leader>v", "<Cmd>Lspsaga outline<CR>", opts)
vim.keymap.set("n", "<C-t>", "<Cmd>Lspsaga term_toggle<CR>", opts)

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ Setup neovide                                           │
-- ╰─────────────────────────────────────────────────────────╯

require("neovide-config")()

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ nvim-tree width                                         │
-- ╰─────────────────────────────────────────────────────────╯
require('nvim-tree').setup({
    view = {
        width = 40,
    }
})

-- ──────────────────────────────────────────────────────────────────────
-- ╭─────────────────────────────────────────────────────────╮
-- │ Set default colorscheme.                                │
-- ╰─────────────────────────────────────────────────────────╯

vim.cmd("colorscheme " .. colorscheme)
