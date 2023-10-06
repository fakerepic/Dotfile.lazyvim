-- NOTE: If you want to add more linting/formating tools, you can add them here.
return {
  -- First, add them to the ensure_installed list of mason.nvim
  {
    "mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "prettierd",
        "latexindent",
        "autopep8",
        -- "cpplint",
      })
    end,
  },

  -- Then, add them to the sources list of null-ls.nvim
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}

      ---------------------------------------------------
      -- For linters, use nls.builtins.diagnostics.*   --
      -- For formatters, use nls.builtins.formatting.* --
      ---------------------------------------------------
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.latexindent,
        nls.builtins.formatting.autopep8,
        -- nls.builtins.diagnostics.cpplint,
      })
    end,
  },
}
