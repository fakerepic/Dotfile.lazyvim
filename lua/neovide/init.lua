if not vim.g.neovide then
  return
end

-- vim.o.guifont = "FiraCode Nerd Font:h15"
-- vim.o.guifont = "Monolisa:h16"
-- vim.o.guifont = "Menlo:h15"
-- vim.o.guifont = "MesloLGL Nerd Font:h18"
vim.o.guifont = "JetBrainsMono NF Light:h17"
-- vim.o.guifont = "iMWritingMono Nerd Font:h17"
-- vim.o.guifont = "Hasklug Nerd Font:h17"
-- vim.o.guifont = "Hack Nerd Font:h18"

vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_input_macos_alt_is_meta = true
vim.g.neovide_confirm_quit = false
vim.g.neovide_cursor_trail_size = 0.3
vim.g.neovide_remember_window_size = false

vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
vim.keymap.set("v", "<D-c>", '"+y') -- Copy
vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

-- dynamically change scale:
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.1)
end)

vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1 / 1.1)
end)

vim.keymap.set("n", "<C-0>", function()
  vim.g.neovide_scale_factor = 1.0
end)
