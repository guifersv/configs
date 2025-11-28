-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
-- Dotnet commands

map("n", "<leader>mr", "<cmd>Dotnet run<cr>", { desc = "Dotnet run" })
map("n", "<leader>mw", "<cmd>Dotnet watch<cr>", { desc = "Dotnet watch" })
map("n", "<leader>mt", "<cmd>Dotnet test<cr>", { desc = "Dotnet test" })
map("n", "<leader>mb", "<cmd>Dotnet build<cr>", { desc = "Dotnet build" })
map("n", "<leader>mv", "<cmd>Dotnet project view<cr>", { desc = "Dotnet project view" })

map("i", "jk", "<Esc>")

map("n", "<leader>jn", function()
  require("jdtls").test_nearest_method()
end, { desc = "Java run nearest test" })

map("n", "<leader>jc", function()
  require("jdtls").test_class()
end, { desc = "Java run test class" })
