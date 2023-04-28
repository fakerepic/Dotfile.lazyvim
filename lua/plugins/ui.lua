return {
  -- use bordered window for nvim-cmp
  {

    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
  },
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
          -- border = "rounded", --works, but not nessessary
          win_options = {
            winhighlight = {
              -- Normal = "NoiceCmdlinePopup",
              -- FloatBorder = "NoiceNotify",
              Normal = "Normal",
              FloatBorder = "Normal",
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
    opts = {
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
  },
  {
    "indent-blankline.nvim",
    -- enabled = false,
    opts = { char = " " },
  },
  {
    "gitsigns.nvim",
    -- enabled = false,
    keys = {
      -- { "<leader>ug", ":Gitsigns toggle_signs<CR>", "toggle signs" },
      { "<leader>ug", ":Gitsigns toggle_linehl<CR>", "toggle signs" },
      -- { "<leader>gul", ":Gitsigns toggle_linehl<CR>", "toggle linehl" },
      -- { "<leader>gun", ":Gitsigns toggle_numhl<CR>", "toggle numhl" },
    },
    opts = {
      signcolumn = false,
    },
  },
  {
    "lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        component_separators = { "", "" },
        section_separators = { "", "" },
      },
      extensions = { "nvim-tree", "quickfix" },
    },
  },
  {
    "bufferline.nvim",
    event = "BufReadPost",
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
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "thin",
        enforce_regular_tabs = true,
        -- always_show_bufferline = true,
      },
    },
  },
}
