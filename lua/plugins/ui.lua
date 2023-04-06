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
    "echasnovski/mini.animate",
    opts = {
      cursor = {
        enable = false,
      },
    },
    enabled = false,
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
}
