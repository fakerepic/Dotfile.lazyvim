return {
  -- use bordered window for nvim-cmp
  {
    "nvim-lspconfig",
    opts = function(_, opts)
      local _float = {
        focusable = true,
        style = "minimal",
        border = "rounded",
      }
      vim.diagnostic.config({ float = _float })
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      views = {
        hover = {
          win_options = {
            winhighlight = {
              Normal = "NoiceCmdlinePopup",
              FloatBorder = "NoiceNotify",
            },
            winblend = vim.o.pumblend,
          },
        },
      },
      presets = {
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },
  {
    "mini.indentscope",
    enabled = false,
  },
  {
    "indent-blankline.nvim",
    opts = {
      indent = { char = " " },
    }
  },
  {
    "gitsigns.nvim",
    keys = {
      { "<leader>ug", "<cmd>Gitsigns toggle_signs<CR>", "toggle signs" },
    },
    opts = {
      signcolumn = false,
    },
  },
  {
    "lualine.nvim",
    opts = {
      options = {
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        -- lualine_a = {
        --   { "mode", separator = { left = "" }, right_padding = 2 },
        -- },
        -- lualine_b = { "filename", "branch" },
        -- lualine_c = { "fileformat" },
        -- lualine_x = {}, already configed by lazyvim
        -- lualine_y = { "filetype", "progress" },
        -- lualine_z = {
        --   { "location", separator = { right = "" }, left_padding = 2 },
        -- },
        -- lualine_y = { "filetype", "progress" },
        -- lualine_z = { "location" },
        -- lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        -- lualine_x = {}, already configed by lazyvim
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },
  {
    "bufferline.nvim",
    event = "BufReadPost",
    enabled = false,
    opts = {
      options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 24,
        show_duplicate_prefix = true,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "thin",
        -- enforce_regular_tabs = true,
        -- always_show_bufferline = true,
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>z", "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" },
    },
    opts = {
      window = {
        backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        -- width = 0.95, -- width of the Zen window
        height = 0.95, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
          signcolumn = "no", -- disable signcolumn
          -- number = false, -- disable number column
          -- relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          foldcolumn = "0", -- disable fold column
          list = false, -- disable whitespace characters
        },
      },
      plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
          laststatus = 0,
        },
        -- lualine = { enabled = true },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = true }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
        -- this will change the font size on kitty when in zen mode
        -- to make this work, you need to set the following kitty options:
        -- - allow_remote_control socket-only
        -- - listen_on unix:/tmp/kitty
        kitty = {
          enabled = false,
          font = "+4", -- font size increment
        },
        -- this will change the font size on alacritty when in zen mode
        -- requires  Alacritty Version 0.10.0 or higher
        -- uses `alacritty msg` subcommand to change font size
        alacritty = {
          -- enabled = false,
          font = "14", -- font size
        },
        -- this will change the font size on wezterm when in zen mode
        -- See alse also the Plugins/Wezterm section in this projects README
        wezterm = {
          -- enabled = false,
          -- can be either an absolute font size or the number of incremental steps
          font = "+4", -- (10% increase per step)
        },
      },
      on_open = function(win) end,
      on_close = function() end,
    },
  },
}
