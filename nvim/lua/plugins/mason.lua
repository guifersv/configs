---@type LazySpec
return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "roslyn",

        -- install formatters
        "stylua",
        "csharpier",

        -- install debuggers
        "netcoredbg",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
