return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default", -- or "none" if you want to fully customize
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
