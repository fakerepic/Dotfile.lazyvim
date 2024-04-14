return {
  {
    "solidjs-community/solid-snippets",
    ft = {'javascript', 'typescript', 'typescriptreact', 'javascriptreact'},
    dependencies = {
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = {
          vim.fn.stdpath("data") .. "/lazy/solid-snippets"
        },
      })
    end,
  },
}
