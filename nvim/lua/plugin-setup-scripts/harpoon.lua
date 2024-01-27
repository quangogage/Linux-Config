return function(harpoon)
    local opts = { noremap = true, silent = true } ---Used often when setting up keybinds.

    harpoon:setup({
        settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
        },
    })

    ---Add a new entry to the list of buffers
    vim.keymap.set("n", "<leader>f", function() harpoon:list():append() end, opts)
    vim.keymap.set("n", "<leader>g", function() harpoon:list():prepend() end, opts)
    
    ---View entire list of buffers.
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, opts)

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, opts)
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, opts)
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, opts)
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, opts)

    ---Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end, opts)
    vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end, opts)

end
