return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    signature = {
      enabled = true,
      keymaps = {
        next_signature = "<C-j>",
        prev_signature = "<C-h>",
      },
    },
  },
}
