local plugins = {
  {
    "klen/nvim-test",
    config = function()
      require('nvim-test').setup()
    end
  },
  {
    "ThePrimeagen/harpoon",
    config = function()
      require "custom.configs.harpoon"
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {"mfussenegger/nvim-dap", "leoluz/nvim-dap-go"},
    config = function()
      require "custom.configs.dap"
    end
  },
  {
    "leoluz/nvim-dap-go",
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "eslint_d",
        "gofumpt",
        "goimports",
        "goimports-reviser",
        "golangci-lint",
        "golines",
        "gopls",
        "js-debug-adapter",
        "eslint-lsp",
        "prettier",
        "typescript-language-server",
        "node-debug2-adapter"
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "go",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig"
      },
    },
  },
}

return plugins
