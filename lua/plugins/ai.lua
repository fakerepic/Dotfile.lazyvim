return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
        keymap = {
          accept = "<C-A>",
          dismiss = "<C-D>",
          next = "<C-C>",
        },
        -- When `auto_trigger` is `false`, use the `next` or `prev` keymap to trigger copilot suggestion.
      },
      panel = {
        enabled = true,
        keymap = {
          open = "<C-P>",
        },
      },
      filetypes = {
        lua = true,
        rust = true,
        markdown = true,
        cpp = true,
        c = true,
        java = true,
        python = true,
        javascript = true,
        typescript = true,
        html = true,
        css = true,
        json = true,
        yaml = true,
        toml = true,
        sh = true,
        zsh = true,
        fish = true,
        -- ["*"] = false,
      },
    },
  },
}
