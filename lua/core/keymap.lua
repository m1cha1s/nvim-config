vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)

vim.keymap.set("n", "<leader>sv", function () vim.cmd("vsplit") end)
vim.keymap.set("n", "<leader>sh", function () vim.cmd("split") end)

vim.keymap.set("n", "<leader>cb", function () 
    ft = vim.bo.filetype
    if ft == "c" or ft == "cpp" then
        vim.cmd("!make build") 
    elseif ft == "rust" then
        vim.cmd("!cargo build")
    elseif ft == "go" then
        vim.cmd("!go build")
    end
end)
vim.keymap.set("n", "<leader>cc", function () 
    ft = vim.bo.filetype
    if ft == "c" or ft == "cpp" then
        vim.cmd("!make clean") 
    elseif ft == "rust" then
        vim.cmd("!cargo clean")
    elseif ft == "go" then
        vim.cmd("!go clean")
    end
end)
vim.keymap.set("n", "<leader>cr", function () 
    ft = vim.bo.filetype
    if ft == "c" or ft == "cpp" then
        vim.cmd("!make run") 
    elseif ft == "rust" then
        vim.cmd("!cargo run")
    elseif ft == "go" then
        vim.cmd("!go run .")
    elseif ft == "python" then
        vim.cmd("!python ./main.py")
    end
end)

