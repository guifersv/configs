return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      progress = { enabled = false }, -- disable progress to avoid Razor spam
      signature = { enabled = true },
      hover = { enabled = true },
    },
  },
}
