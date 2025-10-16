require "nvchad.autocmds"

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg == "." or vim.fn.isdirectory(arg) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end,
})
