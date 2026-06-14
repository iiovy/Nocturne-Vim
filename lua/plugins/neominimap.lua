return {
  {
    "Isrothy/neominimap.nvim",
    version = "v3.*.*",
    lazy = false,

    init = function()
      -- basic editor tweaks for minimap behavior
      vim.opt.wrap = false
      vim.opt.sidescrolloff = 36

      -- main config
      vim.g.neominimap = {
        auto_enable = false,

        x_multiplier = 3,
        y_multiplier = 2,

        layout = "float",

        float = {
          minimap_width = 18,
          max_minimap_height = 25,

          margin = {
            right = 2,
            top = 5,
            bottom = 5,
          },

          z_index = 1,
        },

        -- PERFORMANCE / FEEL
        delay = 200,
        sync_cursor = true,

        -- CONTENT
        diagnostic = {
          enabled = true,
          mode = "line",
        },

        git = {
          enabled = false,
          mode = "sign",
        },

        treesitter = {
          enabled = true,
        },
      }

      -- BASE MINIMAP STYLE 
      vim.api.nvim_set_hl(0, "NeoMinimapCursorLine", { bg = "#2a2a2a" })

      -- DIAGNOSTICS (
      vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#703541" })
      vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = "#000000" })
      vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = "#000000" })
      vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = "#000000" })
    end,
  },
}
