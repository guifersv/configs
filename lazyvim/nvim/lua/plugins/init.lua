return {
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
        -- By loading as a dependencies, we ensure that we are available to set
        -- the handlers for Roslyn.
        "tris203/rzls.nvim",
        config = true,
      },
    },
    lazy = false,
    config = function()
      require("config.rzls").configure()
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
        "xmlformatter",
        "stylua",
        "html-lsp",
        "css-lsp",
        "eslint-lsp",
        "typescript-language-server",
        "csharpier",
        "prettier",
        "json-lsp",
        "yaml-language-server",

        -- for some reason those have to be installed explicitely with MasonInstall
        "roslyn",
        "rzls",
        "netcoredbg",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hyprlang",
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c_sharp",
        "razor",
        "yaml",
      },
    },
  },
}
