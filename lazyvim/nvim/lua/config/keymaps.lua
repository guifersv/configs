-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "c", '"_c', { noremap = true, silent = true })
map("n", "x", '"_x', { noremap = true, silent = true })
map("x", "c", '"_c', { noremap = true, silent = true })
map("x", "x", '"_x', { noremap = true, silent = true })
