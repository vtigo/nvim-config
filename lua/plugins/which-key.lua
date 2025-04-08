return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")

        -- Groups
        wk.add({
            { "<leader>e", group = "Open explorer" },
            { "<leader>f", group = "Fuzzy Finder" },
            { "<leader>h", group = "Harpoon" },
            { "<leader>u", group = "Undo Tree" },
            { "<leader>v", group = "LSP" },
            { "<leader>v", group = "LSP" },
            { "<leader>vc", group = "Code" },
            { "<leader>vr", group = "References" },
            { "<leader>vw", group = "Workspace" },
        })
    end,
}
