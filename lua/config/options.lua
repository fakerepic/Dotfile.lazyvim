-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.conceallevel = 0

require("lazyvim.plugins.lsp.format").autoformat = false

vim.g.python3_host_prog = "/Users/younglong/miniconda3/bin/python"

-- neovide config --
vim.o.guifont = "FiraCode Nerd Font:h15"

-- -- Helper function for transparency formatting
-- local alpha = function()
--   return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
-- end
-- -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- vim.g.neovide_transparency = 0.85
-- vim.g.transparency = 0.8
-- vim.g.neovide_background_color = "#0f1117" .. alpha()
vim.g.neovide_input_macos_alt_is_meta = true

vim.g.neovide_confirm_quit = true

vim.g.neovide_cursor_trail_size = 0.0
