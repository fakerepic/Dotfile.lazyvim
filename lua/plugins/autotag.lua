return {
  {
    -- especially useful when using JSX, React ...
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup()
      require("nvim-treesitter.configs").get_module("autotag").enable = true
    end,
  },
}
