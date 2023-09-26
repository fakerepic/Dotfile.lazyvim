return {
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" }, -- NOTE: Choose the default theme here
  },
  -- make edge colors match the theme
  {
    "typicode/bg.nvim",
    lazy = false,
  },

  -- BELLOW ARE ALL THE COLORSCHEME --

  { "savq/melange-nvim", event = "VeryLazy" },
  { "Shatur/neovim-ayu", event = "VeryLazy" },
  { "rose-pine/neovim", name = "rose-pine", event = "VeryLazy" },
  { "atelierbram/Base2Tone-nvim", event = "VeryLazy" },
  { "rmehri01/onenord.nvim", event = "VeryLazy" },
  { "JoosepAlviste/palenightfall.nvim", event = "VeryLazy" },
  { "AlexvZyl/nordic.nvim", event = "VeryLazy" },
  { "EdenEast/nightfox.nvim", event = "VeryLazy" },
  { "shaunsingh/nord.nvim", event = "VeryLazy" },
  { "loctvl842/monokai-pro.nvim", event = "VeryLazy" },
  { "marko-cerovac/material.nvim", event = "VeryLazy" },

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
      term_colors = true, -- Change terminal color as per the selected theme style
      cmp_itemkind_reverse = true, -- reverse item kind highlights in cmp menu
      -- toggle theme style ---
      toggle_style_key = "<leader>uo", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { "cool", "deep", "dark", "darker", "warm", "warmer", "light" }, -- List of styles to toggle between

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
    },
  },

  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false, -- show the '~' characters after the end of buffers
      term_colors = false,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = function(C)
        return {
          CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
          CmpItemKindKeyword = { fg = C.base, bg = C.red },
          CmpItemKindText = { fg = C.base, bg = C.teal },
          CmpItemKindMethod = { fg = C.base, bg = C.blue },
          CmpItemKindConstructor = { fg = C.base, bg = C.blue },
          CmpItemKindFunction = { fg = C.base, bg = C.blue },
          CmpItemKindFolder = { fg = C.base, bg = C.blue },
          CmpItemKindModule = { fg = C.base, bg = C.blue },
          CmpItemKindConstant = { fg = C.base, bg = C.peach },
          CmpItemKindField = { fg = C.base, bg = C.green },
          CmpItemKindProperty = { fg = C.base, bg = C.green },
          CmpItemKindEnum = { fg = C.base, bg = C.green },
          CmpItemKindUnit = { fg = C.base, bg = C.green },
          CmpItemKindClass = { fg = C.base, bg = C.yellow },
          CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
          CmpItemKindFile = { fg = C.base, bg = C.blue },
          CmpItemKindInterface = { fg = C.base, bg = C.yellow },
          CmpItemKindColor = { fg = C.base, bg = C.red },
          CmpItemKindReference = { fg = C.base, bg = C.red },
          CmpItemKindEnumMember = { fg = C.base, bg = C.red },
          CmpItemKindStruct = { fg = C.base, bg = C.blue },
          CmpItemKindValue = { fg = C.base, bg = C.peach },
          CmpItemKindEvent = { fg = C.base, bg = C.blue },
          CmpItemKindOperator = { fg = C.base, bg = C.blue },
          CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
          CmpItemKindCopilot = { fg = C.base, bg = C.teal },
        }
      end,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        neotree = true,
        lsp_saga = true,
        treesitter = true,
        navic = true,
        dashboard = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        dap = {
          enabled = false,
          enable_ui = false,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
      },
    },
  },
}
