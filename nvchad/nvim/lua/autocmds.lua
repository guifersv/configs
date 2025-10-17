require "nvchad.autocmds"

vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTree_start_directory", { clear = true }),
  desc = "Start Nvim-tree with directory",
  once = true,
  callback = function()
    if package.loaded["nvim-tree"] then
      return
    else
      local stats = vim.uv.fs_stat(vim.fn.argv(0))
      if stats and stats.type == "directory" then
        require("nvim-tree.api").tree.open()
      end
    end
  end,
})
