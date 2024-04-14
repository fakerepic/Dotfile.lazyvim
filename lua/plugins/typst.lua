return {
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = true,
    config = function()
      require("lspconfig").typst_lsp.setup({
        settings = {
          exportPdf = "onType", -- Choose onType, onSave or never.
          -- serverPath = "" -- Normally, there is no need to uncomment it.
        },
      })
      vim.g.typst_pdf_viewer = "skim"
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        typst = { "typstfmt" },
      },
    },
  },
}
