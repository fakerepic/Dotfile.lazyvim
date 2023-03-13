return {
  {
    "JoosepAlviste/palenightfall.nvim",
    "AlexvZyl/nordic.nvim",
    "EdenEast/nightfox.nvim",
    "shaunsingh/nord.nvim",
    -- "joshdick/onedark.vim",
    event = "VeryLazy",
  },
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
  },
  -- {
  --   "sainnhe/everforest",
  --   version = false,
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.everforest_background = "soft"
  --     vim.g.everforest_enable_italic = 1
  --   end,
  -- },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
        -- Default is "medium".
        background = "soft",
        -- How much of the background should be transparent. Options are 0, 1 or 2.
        -- Default is 0.
        --
        -- 2 will have more UI components be transparent (e.g. status line
        -- background).
        transparent_background_level = 0,
        -- Whether italics should be used for keywords, builtin types and more.
        italics = true,
        -- Disable italic fonts for comments. Comments are in italics by default, set
        -- this to `true` to make them _not_ italic!
        disable_italic_comments = false,
      })
    end,
  },
  {
    "marko-cerovac/material.nvim",
    event = "VeryLazy",
    config = function()
      -- vim.g.material_style = "palenight"
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
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

      -- Change code style ---
      -- Options are italic, bold, underline, none
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
    opts = {
      colorscheme = "onedark",
    },
  },
}
