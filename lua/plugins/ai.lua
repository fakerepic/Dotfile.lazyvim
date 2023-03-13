return {
  {
    "zbirenbaum/copilot.lua",
    -- hidden = function()
    --   local cmp = require("cmp")
    --   if cmp == nil then
    --     return
    --   end
    --
    --   cmp.event:on("menu_opened", function()
    --     vim.b.copilot_suggestion_hidden = true
    --   end)
    --
    --   cmp.event:on("menu_closed", function()
    --     vim.b.copilot_suggestion_hidden = false
    --   end)
    -- end,

    opts = {
      suggestion = {
        enabled = true,
        -- auto_trigger = true,
        keymap = {
          accept = "<C-A>",
          dismiss = "<C-D>",
          next = "<C-]",
          prev = "<C-[>",
        },
        -- When `auto_trigger` is `false`, use the `next` or `prev` keymap to trigger copilot suggestion.
      },
      panel = { enabled = true },
      -- filetypes = {
      --   lua = true,
      --   markdown = true,
      --   cpp = true,
      --   python = true,
      --   javascript = true,
      --   typescript = true,
      --   html = true,
      --   css = true,
      --   json = true,
      --   yaml = true,
      --   ["*"] = false,
      -- },
    },
  },
  {
    "nvim-cmp",
  },
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
    config = function()
      -- vim.keymap.set("n", "<leader>gpt", ":ChatGPT<cr>", { desc = "ChatGPT" })
      -- vim.keymap.set("n", "<leader>gpa", ":ChatGPTActAs<cr>", { desc = "ChatGPT Act As" })
      -- vim.keymap.set("n", "<leader>gpc", ":ChatGPTCompleteCode<cr>", { desc = "ChatGPT Complete Code" })
      -- vim.keymap.set("n", "<leader>gpe", ":ChatGPTEditWithInstructions<cr>", { desc = "ChatGPT With Instructions" })
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "dpayne/CodeGPT.nvim",
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
