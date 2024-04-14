return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>ra",
        function()
          require("refactoring").select_refactor({ show_success_message = false })
        end,
        desc = "select_refactor",
        mode = { "n", "x" },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup({ show_success_message = false })
    end,
  },
}
