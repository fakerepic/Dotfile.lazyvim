return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- nls.builtins.formatting.prettier,
          nls.builtins.formatting.latexindent,
          nls.builtins.formatting.autopep8,
          nls.builtins.formatting.stylua,
          -- nls.builtins.diagnostics.flake8,
        },
      }
    end,
  },
}
