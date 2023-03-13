return {
  {
    "nvim-lspconfig",
    opts = {
      servers = {
        --   texlab = {},
        clangd = {
          mason = false,
          -- cmd = { "clangd" },
          -- on_attach = on_attach,
          capabilities = { offsetEncoding = "utf-8" },
        },
      },
    },
  },
}
