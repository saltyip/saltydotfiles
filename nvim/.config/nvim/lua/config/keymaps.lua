-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "yank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', { desc = "yank line to clipboard" })
