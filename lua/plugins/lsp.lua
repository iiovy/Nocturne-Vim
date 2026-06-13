return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    require("mason").setup()

    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local capabilities = vim.lsp.protocol.make_client_capabilities()

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "rust_analyzer",
        "html",
        "cssls",
        "jsonls",
        "gopls",
        "bashls",
        "yamlls",
        "marksman",
      },

      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,

        lua_ls = function()
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      },
    })
  end,
}
