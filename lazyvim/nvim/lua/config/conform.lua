require("conform").setup({
  formatters_by_ft = {
    cs = { "csharpier" },
  },
  formatters = {
    csharpier = {
      command = "csharpier",
      args = { "format" },
    },
  },
})
