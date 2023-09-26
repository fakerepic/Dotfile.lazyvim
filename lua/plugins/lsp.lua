return {
  {
    "nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        typst_lsp = {
          settings = { exportPdf = "onType"}
        },
        clangd = {
          -- mason = false, --use local clangd
        },
      },

      setup = {
        -- fix clangd offset encoding
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
