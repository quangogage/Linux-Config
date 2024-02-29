return function(harpoon)
    local opts = { noremap = true, silent = true } ---Used often when setting up keybinds.

    harpoon:setup({
        settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
        },
    })

    ---Add a new entry to the list of buffers
    opts.desc = "Append a new entry to the list of buffers"
    vim.keymap.set("n", "<leader>f", function() harpoon:list():append() end, opts)
    opts.desc = "Prepend a new entry to the list of buffers"
    vim.keymap.set("n", "<leader>g", function() harpoon:list():prepend() end, opts)

    ---View entire list of buffers.
    opts.desc = "View entire list of buffers"
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, opts)

    opts.desc = "Go to 1st entry in list of buffers"
    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, opts)
    opts.desc = "Go to 2nd entry in list of buffers"
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, opts)
    opts.desc = "Go to 3rd entry in list of buffers"
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, opts)
    opts.desc = "Go to 4th entry in list of buffers"
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, opts)

    ---Toggle previous & next buffers stored within Harpoon list
    opts.desc = "Got to previous buffer in list"
    vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end, opts)
    opts.desc = "Got to next buffer in list"
    vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end, opts)

end
