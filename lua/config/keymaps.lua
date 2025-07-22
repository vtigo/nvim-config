-- enter visual mode
vim.keymap.set('i', 'kj', '<ESC>')

-- open ex
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- format file with LSP
vim.keymap.set('n', '<leader>p', function() vim.lsp.buf.format() end)
