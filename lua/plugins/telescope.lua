return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        ";b",
        function()
          require("telescope.builtin").buffers({ initial_mode = "normal" })
        end,
        desc = "telescope buffers",
      },
      {
        ";d",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "all diagnostics",
      },
      {
        ";s",
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "treesitter",
      },
      {
        ";h",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "help tags",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      {
        ";t",
        function()
          local telescope = require("telescope")
          telescope.extensions.file_browser.file_browser({
            path = "~/.local/state/nvim/swap",
            cwd = "~/.local/state/nvim/swap",
            respect_gitignore = false,
            hidden = false,
            grouped = true,
            initial_mode = "normal",
          })
        end,
        desc = "help tags",
      },
      {
        ";f",
        function()
          local telescope = require("telescope")
          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = vim.fn.expand("%:p:h"),
            respect_gitignore = false,
            hidden = false,
            grouped = true,
          })
        end,
        desc = "help tags",
      },
    },
  },
}
