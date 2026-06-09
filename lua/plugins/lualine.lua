return {
  "nvim-lualine/lualine.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { fg = "#1e1e1e", bg = "#f5f5f5", gui = "bold" },
            b = { fg = "#f5f5f5", bg = "#2a2a2a" },
            c = { fg = "#f5f5f5", bg = "none" },
          },

          insert = {
            a = { fg = "#1e1e1e", bg = "#f5f5f5", gui = "bold" },
            b = { fg = "#f5f5f5", bg = "#2a2a2a" },
            c = { fg = "#f5f5f5", bg = "none" },
          },

          inactive = {
            a = { fg = "#777777", bg = "none" },
            b = { fg = "#777777", bg = "none" },
            c = { fg = "#777777", bg = "none" },
          },
        },

        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },

        globalstatus = true,
        icons_enabled = true,

        disabled_filetypes = {
          statusline = { "alpha", "dashboard" },
        },
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
