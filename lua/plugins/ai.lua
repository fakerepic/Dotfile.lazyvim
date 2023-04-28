return {
  -- {
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --     suggestion = {
  --       enabled = true,
  --       auto_trigger = false,
  --       keymap = {
  --         accept = "<C-A>",
  --         dismiss = "<C-D>",
  --         next = "<C-C>",
  --       },
  --       -- When `auto_trigger` is `false`, use the `next` or `prev` keymap to trigger copilot suggestion.
  --     },
  --     panel = { enabled = true },
  --     filetypes = {
  --       lua = true,
  --       rust = true,
  --       markdown = true,
  --       cpp = true,
  --       c = true,
  --       java = true,
  --       python = true,
  --       javascript = true,
  --       typescript = true,
  --       html = true,
  --       css = true,
  --       json = true,
  --       yaml = true,
  --       toml = true,
  --       sh = true,
  --       zsh = true,
  --       fish = true,
  --       typst = false,
  --       -- ["*"] = false,
  --     },
  --   },
  -- },
  {
    "jackMort/ChatGPT.nvim",
    -- event = "<leader>gp",
    keys = {
      -- { "<leader>gp" },
      { "gpt", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
      { "gpa", "<cmd>ChatGPTActAs<cr>", desc = "ChatGPT Act As" },
      { "gpc", "<cmd>ChatGPTCompleteCode<cr>", desc = "ChatGPT Complete Code" },
      { "gpe", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "ChatGPT Edit With Instructions" },
    },
    opts = {},
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "dpayne/CodeGPT.nvim",
    opts = {
      max_line_length = 300,
    },
    keys = {
      { "<leader>cg" },
    },
    config = function()
      vim.keymap.set("n", "<leader>cg", ":Chat ", {})
      vim.keymap.set("v", "<leader>cg", ":Chat ", {})
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
}
