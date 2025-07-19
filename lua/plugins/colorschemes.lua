return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
  },
  {
      "ribru17/bamboo.nvim",
      name = "bamboo",
      priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            which_key = true,
        }
    })
    end
  },
  {
      "neanias/everforest-nvim",
      name = "everforest",
      priority = 1000,
      config = function()
          require("everforest").setup({
              transparent_background = true
          })
          vim.cmd.colorscheme("everforest")
      end
  }
}

