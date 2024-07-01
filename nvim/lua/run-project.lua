
function vim.g.run_project()
    if vim.fn.filereadable("main.lua") == 1 then
        -- Assume if we find a main.lua that it is a Love2D project.
        vim.cmd('!love .')
    elseif vim.fn.filereadable('package.json') == 1 then
        vim.cmd('!npm run start')
    elseif vim.fn.filereadable('run.bat') == 1 then
        vim.cmd('!run.bat')
    elseif vim.fn.filereadable('run.sh') == 1 then
        vim.cmd('!./run.sh')
    else
        vim.cmd('echo "Could not determine project type."')
    end
end

vim.keymap.set("", "<F6>", vim.g.run_project , { noremap = true, silent = true })
