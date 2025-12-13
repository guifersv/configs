return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[
         █████                                          █████████                                     
        ▒▒███                                          ███▒▒▒▒▒███                                    
         ▒███         ██████  █████ █████  ██████     ▒███    ▒███  █████████████    ██████  ████████ 
         ▒███        ███▒▒███▒▒███ ▒▒███  ███▒▒███    ▒███████████ ▒▒███▒▒███▒▒███  ███▒▒███▒▒███▒▒███
         ▒███       ▒███ ▒███ ▒███  ▒███ ▒███████     ▒███▒▒▒▒▒███  ▒███ ▒███ ▒███ ▒███ ▒███ ▒███ ▒▒▒ 
         ▒███      █▒███ ▒███ ▒▒███ ███  ▒███▒▒▒      ▒███    ▒███  ▒███ ▒███ ▒███ ▒███ ▒███ ▒███     
         ███████████▒▒██████   ▒▒█████   ▒▒██████     █████   █████ █████▒███ █████▒▒██████  █████    
         ▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒     ▒▒▒▒▒     ▒▒▒▒▒▒     ▒▒▒▒▒   ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒  ▒▒▒▒▒     
]],
      },
    },
    -- explorer = { enabled = true },
    indent = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    words = { enabled = true },
    lazygit = { enabled = true },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("snacks").explorer()
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>gg",
      function()
        require("snacks").lazygit()
      end,
      desc = "Lazygit (root dir)",
    },
  },
}
