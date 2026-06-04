return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/snacks.nvim",
      "amansingh-afk/milli.nvim",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "",
        "",
        "",
        "",
        "",
      }

      -- Snacks-based actions
      dashboard.section.buttons.val = {
        dashboard.button("f", " Find File", function()
          require("snacks").picker.files()
        end),

        dashboard.button("g", " Live Grep", function()
          require("snacks").picker.grep()
        end),

        dashboard.button("r", " Recent Files", function()
          require("snacks").picker.recent()
        end),

        dashboard.button("n", " New File", ":ene <BAR> startinsert<CR>"),
        dashboard.button("q", " Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.config)

      -- milli overlay (safe)
      vim.schedule(function()
        require("milli").alpha({
          splash = "fire",
          loop = false,
        })
      end)
    end,
  },
}
