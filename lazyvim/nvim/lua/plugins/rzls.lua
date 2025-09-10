return {
  {
    "tris203/rzls.nvim",
    ft = { "razor", "cshtml" },
    opts = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

      return {
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        end,
      }
    end,
  },
}
