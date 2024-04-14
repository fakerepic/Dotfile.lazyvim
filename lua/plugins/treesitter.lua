return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = false,
    },
    optional = true,
  },

  -- Automatically add closing tags for HTML and JSX
  {
    "windwp/nvim-ts-autotag",
    event = "LazyFile",
    opts = {},
  },
}
