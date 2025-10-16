return {
  { 'nvim-mini/mini.move', version = false },
  { 'nvim-mini/mini.surround', version = false },
  { 'nvim-mini/mini.icons', version = false },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    -- ft = { "cs", "razor" },
    opts = {
      -- your configuration comes here; leave empty for default settings
    },
    dependencies = {
      {
        "tris203/rzls.nvim",
        config = true,
      },
    },
    lazy = false,
    config = function()
      require("configs.rzls").configure()
    end,
    init = function()
      -- We add the Razor file types before the plugin loads.
      vim.filetype.add({
        extension = {
          razor = "razor",
          cshtml = "razor",
        },
      })
    end,
  },

  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",

        -- needs to be installed manually
        "typescript-language-server",
        "csharpier",
        "prettier",
        "json-lsp",
        "yaml-language-server",
        "roslyn",
        "rzls",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c_sharp",
        "razor",
        "yaml"
      },
    },
  },
}
