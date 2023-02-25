return {
  {
    "JoosepAlviste/palenightfall.nvim",
    event = "VeryLazy",
    name = "palenightfall",
  },
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
  },
  {
    "sainnhe/everforest",
    version = false,
    event = "VeryLazy",
    config = function()
      vim.g.everforest_background = "soft"
      vim.g.everforest_enable_italic = 1
    end,
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    opts = {
      style = "moon",
    },
  },
  {
    "EdenEast/nightfox.nvim",
    event = "VeryLazy",
  },
  {
    "rakr/vim-one",
    event = "VeryLazy",
  },
  {
    "AlexvZyl/nordic.nvim",
    event = "VeryLazy",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
