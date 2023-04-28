return {
  -- fix clangd offset encoding
  {
    "nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        --   texlab = {},
        typst_lsp = {},
        clangd = {
          mason = false, --use local clangd
          -- cmd = { "clangd" },
          -- on_attach = on_attach,
          capabilities = { offsetEncoding = "utf-8" },
        },
      },
    },
  },
}
