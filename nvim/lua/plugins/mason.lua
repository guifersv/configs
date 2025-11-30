return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls",
        "rust-analyzer",

        "csharpier",
        "google-java-format",

        "netcoredbg",
        "java-debug-adapter",
        "codelldb",

        "java-test",
      },
    },
  },
}
