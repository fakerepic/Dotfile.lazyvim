return {
  -- change some neo-tree options
  {
    "neo-tree.nvim",
    -- event = "VeryLazy",
    opts = {
      window = {
        position = "left",
        width = 30,
      },
    },
  },

  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root
        })
        end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
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
    "mg979/vim-visual-multi",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      vim.g.VM_case_setting = "sensitive"
      vim.g.VM_theme = "nord"
    end,
  },
}
