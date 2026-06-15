return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
      delay = 300,

      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },

      preset = "modern",

      win = {
        border = "rounded",
        padding = { 1, 2 },
      },

      layout = {
        width = { min = 20 },
        spacing = 3,
      },

      sort = { "local", "order", "group", "alphanum", "mod" },

      spec = {
        { "<leader>f", group = "󰈞 Find" },
        { "<leader>g", group = "󰊢 Git" },
        { "<leader>c", group = "󰅙 Code" },
        { "<leader>b", group = "󰓩 Buffers" },
        { "<leader>w", group = "󰖲 Windows" },
        { "<leader>t", group = "󰔛 Toggle" },
        { "<leader>u", group = "󰙵 UI" },
        { "<leader>q", group = "󰗼 Quit" },
      },
    },

    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
    end,
  },
}
