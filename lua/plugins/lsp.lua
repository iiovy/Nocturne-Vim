return {
  'neovim/nvim-lspconfig',

  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },

  config = function()
    -- Mason setup (installs LSP servers)
    require('mason').setup()

    -- LSP server installation list + automatic setup
    require('mason-lspconfig').setup({
      ensure_installed = {
        -- Core
        'lua_ls',
        'pyright',
        'clangd',
        'rust_analyzer',

        -- Web
        'ts_ls',
        'html',
        'cssls',
        'jsonls',

        -- Java / C#
        'jdtls',
        'csharp_ls',

        -- Other languages
        'gopls',
        'intelephense',
        'yamlls',

        -- Extras you asked for
        'marksman',
        'bashls',
        'lemminx',
      },

      -- modern automatic handler system
      handlers = {
        -- Default handler for all servers
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,

        -- Lua special config (Neovim support)
        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { 'vim' },
                },
              },
            },
          })
        end,
      },
    })
  end,
}
