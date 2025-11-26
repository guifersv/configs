-- NOTE: (https://docs.astronvim.com/configuration/lua_completion/)
-- NOTE: (https://docs.astronvim.com/recipes/advanced_lsp/#_top)

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      signature_help = true,
      inlay_hints = true,
    },
  },
}
