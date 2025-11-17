return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "angularls",
          "html",
          "cssls",
          "jsonls",
          "yamlls",
          "pyright",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- novo framework LSP do Neovim 0.11
      local cfg = vim.lsp.config

      cfg("lua_ls", {
        capabilities = capabilities,
      })

      cfg("ts_ls", {
        capabilities = capabilities,
      })

      cfg("html", {
        capabilities = capabilities,
      })

      cfg("cssls", {
        capabilities = capabilities,
      })

      cfg("jsonls", {
        capabilities = capabilities,
      })

      cfg("yamlls", {
        capabilities = capabilities,
      })

      cfg("pyright", {
        capabilities = capabilities,
      })

      cfg("angularls", {
        capabilities = capabilities,
      })

      -- Keymaps padrões LSP
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
