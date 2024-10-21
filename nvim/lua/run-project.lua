
function vim.g.run_project()
    local macunix = vim.fn.has('macunix')
    if vim.fn.filereadable('package.json') == 1 then
        vim.cmd('!npm run start')
    elseif macunix==0 and vim.fn.filereadable('run.bat') == 1 then
        vim.cmd('!run.bat')
    elseif macunix==1 and vim.fn.filereadable('run.sh') == 1 then
        vim.cmd('!./run.sh')
    else
        vim.cmd('echo "Could not determine project type."')
    end
end

vim.keymap.set("", "<F6>", vim.g.run_project , { noremap = true, silent = true })
