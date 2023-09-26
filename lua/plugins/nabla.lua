return {
  -- this requires latex treesitter parser to be installed
  -- :TSInstall latex
  {
    "jbyuki/nabla.nvim",
    keys = {
      {
        "<leader>np",
        function()
          require("nabla").popup()
        end,
        desc = "Nabla Popup",
      },
      {
        "<leader>nt",
        function()
          require("nabla").toggle_virt()
        end,
        desc = "Nabla Toogle Virt",
      },
    },
  },
}
