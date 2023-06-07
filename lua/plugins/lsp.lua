return {
  -- fix clangd offset encoding
  {
    "nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        --   texlab = {},
        typst_lsp = {
          settings = { exportPdf = "onType"}
        },
        -- clangd = {},
        clangd = {
          mason = false, --use local clangd
          -- cmd = { "clangd" },
        },
      },

      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
