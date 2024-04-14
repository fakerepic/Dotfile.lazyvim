-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = true
vim.opt.conceallevel = 0

vim.o.pumblend = 0

vim.o.fillchars = "eob: " -- remove the symbol of eol

-- NOTE: specify which python to use for pynvim (pip install pynvim)
-- so that we can use pynvim in any python env / virtualenv
vim.g.python3_host_prog = "~/miniconda3/bin/python"

vim.g.autoformat = false
