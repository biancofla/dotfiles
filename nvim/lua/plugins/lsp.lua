return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",       -- Lua
	  "ruff",	  -- Python
	  "eslint",	  -- TypeScript
          "rust_analyzer" -- Rust
        }
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup ({})
      lspconfig.ruff.setup({})
      lspconfig.eslint.setup({})
      lspconfig.rust_analyzer.setup({})
    end
  }
}
