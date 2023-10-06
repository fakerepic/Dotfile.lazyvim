-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.conceallevel = 0

vim.o.pumblend = 0

vim.o.fillchars = "eob: " -- remove the symbol of eol

-- NOTE: specify which python to use for pynvim (pip install pynvim)
-- so that we can use pynvim in any python env / virtualenv
vim.g.python3_host_prog = "~/miniconda3/bin/python"

-- neovide config --
if vim.g.neovide then
  -- vim.o.guifont = "FiraCode Nerd Font:h15"
  vim.o.guifont = "Monolisa:h16"
  vim.opt.linespace = 10
  -- vim.o.guifont = "Menlo:h15"

  vim.g.neovide_input_macos_alt_is_meta = true

  vim.g.neovide_confirm_quit = true

  vim.g.neovide_cursor_trail_size = 0.0

  -- dynamically change scale:
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)
end
