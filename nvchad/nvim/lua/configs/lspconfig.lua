require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "jsonls", "ts_ls", "yamlls" }
vim.lsp.enable(servers)

vim.lsp.config("roslyn", {}) -- no vim.lsp.enable() necessary here

-- read :h vim.lsp.config for changing options of lsp servers 
