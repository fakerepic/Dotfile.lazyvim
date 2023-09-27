return {
  {
    "nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        typst_lsp = {
          settings = { exportPdf = "onType"}
        },
      },
    },
  },
}
