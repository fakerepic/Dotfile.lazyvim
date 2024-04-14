return {
  -- change some neo-tree options
  {
    "neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      enable_diagnostics = false,
      disable_netrw = true,
      source_selector = {
        winbar = false,
        separator_active = " ",
        statusline = false,
      },
      enable_git_status = true,
      git_status_async = true,
      default_component_configs = {
        indent = {
          padding = 0,
          with_expanders = false,
        },
        modified = {
          symbol = " ",
        },
      },
      window = {
        position = "left",
        -- width = 30,
      },
      filesystem = {
        group_empty_dirs = true,
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "__pycache__",
          },
        },
        window = {
          mappings = {
            ["h"] = "navigate_up",
            ["l"] = "open",
          },
        },
        follow_current_file = {
          enabled = true,
        },
        -- hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },
    },
  },
  {
    "mg979/vim-visual-multi",
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "nmac427/guess-indent.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
}
