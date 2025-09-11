return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",

      "xmlformatter",
      "csharpier",
      "prettier",

      "stylua",
      "bicep-lsp",
      "html-lsp",
      "css-lsp",
      "eslint-lsp",
      "typescript-language-server",
      "json-lsp",
      "rust-analyzer",

      -- !
      "roslyn",
      "rzls",
      -- "csharp-language-server",
      -- "omnisharp",
    },
  },
}
