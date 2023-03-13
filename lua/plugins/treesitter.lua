return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = {
        -- enable = true,
        -- disable = { "python" },
        disable = true,
      },
      context_commentstring = { enable = true, enable_autocmd = false },
      ensure_installed = {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "cpp", --edited
      },
    },
  },
}
