return {
  {
    "ybian/smartim",
    event = "InsertEnter",
    config = function()
      -- default IME mode
      vim.g.smartim_default = "com.apple.keylayout.ABC"
    end,
  },
}
