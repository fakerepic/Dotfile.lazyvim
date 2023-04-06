return {
  { "rose-pine/neovim", name = "rose-pine", event = "VeryLazy" },
  { "atelierbram/Base2Tone-nvim", event = "VeryLazy" },
  { "rmehri01/onenord.nvim", event = "VeryLazy" },
  { "JoosepAlviste/palenightfall.nvim", event = "VeryLazy" },
  { "AlexvZyl/nordic.nvim", event = "VeryLazy" },
  { "EdenEast/nightfox.nvim", event = "VeryLazy" },
  { "shaunsingh/nord.nvim", event = "VeryLazy" },
  { "catppuccin/nvim", event = "VeryLazy", name = "catppuccin" },
  {
    "marko-cerovac/material.nvim",
    event = "VeryLazy",
    -- config = function()
    --   vim.g.material_style = "palenight"
    -- end,
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    opts = { style = "moon" },
  },
  {
    "sainnhe/everforest",
    event = "VeryLazy",
    config = function()
      -- vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.everforest_better_performance = 1
    end,
  },
  {
    "sainnhe/gruvbox-material",
    event = "VeryLazy",
    config = function()
      vim.g.gruvbox_material_background = "soft"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_better_performance = 1
    end,
  },
  {
    "navarasu/onedark.nvim",
    event = "VeryLazy",
    opts = {
      style = "cool", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = "<leader>uo", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style --- Options are italic, bold, underline, none
      -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "italic",
        -- keywords = "none",
        keywords = "italic",
        -- functions = "none",
        functions = "italic",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    },
  },
  {
    "LazyVim/LazyVim",
    -- opts = { colorscheme = "gruvbox-material" },
    -- opts = { colorscheme = "everforest" },
    opts = { colorscheme = "onenord" },
    -- opts = { colorscheme = "dawnfox" },
  },
  {
    "typicode/bg.nvim",
    lazy = false,
  },
}
