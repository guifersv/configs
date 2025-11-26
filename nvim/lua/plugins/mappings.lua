-- NOTE: (https://docs.astronvim.com/recipes/mappings/)

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<leader>m"] = { name = "Dotnet" },

          ["<leader>mr"] = { "<cmd>Dotnet run<cr>", desc = "Dotnet run" },
          ["<leader>mw"] = { "<cmd>Dotnet watch<cr>", desc = "Dotnet watch" },
          ["<leader>mt"] = { "<cmd>Dotnet test<cr>", desc = "Dotnet test" },
          ["<leader>mb"] = { "<cmd>Dotnet build<cr>", desc = "Dotnet build" },
          ["<leader>mv"] = { "<cmd>Dotnet project view<cr>", desc = "Dotnet project view" },
          -- ["<Leader>bD"] = {
          --   function()
          --     require("astroui.status").heirline.buffer_picker(function(bufnr)
          --       require("astrocore.buffer").close(bufnr)
          --     end)
          --   end,
          --   desc = "Pick to close",
          -- },
          t = {
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
          },
        },
      },
    },
    -- {
    --   "AstroNvim/astrolsp",
    --   ---@type AstroLSPOpts
    --   opts = {
    --     mappings = {
    --       n = {
    --         -- this mapping will only be set in buffers with an LSP attached
    --         K = {
    --           function()
    --             vim.lsp.buf.hover()
    --           end,
    --           desc = "Hover symbol details",
    --         },
    --         -- condition for only server with declaration capabilities
    --         gD = {
    --           function()
    --             vim.lsp.buf.declaration()
    --           end,
    --           desc = "Declaration of current symbol",
    --           cond = "textDocument/declaration",
    --         },
    --       },
    --     },
    --   },
  },
}
