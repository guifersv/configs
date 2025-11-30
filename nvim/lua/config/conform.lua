require("conform").setup({
  formatters_by_ft = {
    cs = { "csharpier" },
    rs = { "rustfmt" },
    java = { "google-java-format" },
  },
})
