-- enter visual mode
vim.keymap.set('i', 'kj', '<ESC>')

-- open ex
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- copy
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
