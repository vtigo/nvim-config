return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        -- Set up telescope
        require('telescope').setup({
            -- Your telescope configuration options here
        })

        -- Set up keymaps
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
    end,
}
