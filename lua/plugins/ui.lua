return {
  {
    "mini.indentscope",
    -- enabled = false,
    opts = {
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
  },

  {
    "indent-blankline.nvim",
    -- enabled = false,
    opts = { char = " " },
  },
  -- {
  --   "echasnovski/mini.animate",
  --   opts = {
  --     cursor = {
  --       enable = false,
  --     },
  --   },
  -- },
  {
    "nvim-notify",
    enabled = false,
  },
}
