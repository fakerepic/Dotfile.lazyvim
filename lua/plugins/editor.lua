return {
  -- change some neo-tree options
  {
    "neo-tree.nvim",
    -- event = "BufReadPre",
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
        width = 30,
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
      git_status = {
        window = {
          position = "float",
          mappings = {
            ["gG"] = "git_commit_and_push",
            ["gg"] = "",
          },
        },
      },
      event_handlers = {
        {
          event = "vim_buffer_enter",
          handler = function(_)
            if vim.bo.filetype == "neo-tree" then
              vim.wo.signcolumn = "auto"
            end
          end,
        },
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
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },
  {
    "nmac427/guess-indent.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      auto_cmd = true,
      -- A list of filetypes for which the auto command gets disabled
      filetype_exclude = {
        "netrw",
        "tutor",
      },
      -- A list of buffer types for which the auto command gets disabled
      buftype_exclude = {
        "help",
        "nofile",
        "terminal",
        "prompt",
      },
    },
  },
}
