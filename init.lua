require('config.keymaps')
require('config.options')
require('config.lazy')

vim.cmd('colorscheme rose-pine')

local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    callback = function(e)
        -- Navigation
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = e.buf, desc = "Go to definition" })
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { buffer = e.buf, desc = "Show documentation" })
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, { buffer = e.buf, desc = "Search workspace symbols" })
        -- Diagnostics
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { buffer = e.buf, desc = "Show diagnostics" })
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, { buffer = e.buf, desc = "Next diagnostic" })
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, { buffer = e.buf, desc = "Previous diagnostic" })
        -- Code actions
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, { buffer = e.buf, desc = "Code actions" })
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { buffer = e.buf, desc = "Find references" })
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, { buffer = e.buf, desc = "Rename symbol" })
        -- Help
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { buffer = e.buf, desc = "Show function signature" })
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
