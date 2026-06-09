return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {}

      dashboard.section.buttons.val = {
        dashboard.button("n", "  New File", "<cmd>enew<CR>"),

        dashboard.button(
          "r",
          "  Recent",
          ":lua require('snacks').picker.recent()<CR>"
        ),

        dashboard.button(
          "f",
          "  Find Files",
          ":lua require('snacks').picker.files()<CR>"
        ),

        dashboard.button(
          "g",
          "  Grep",
          ":lua require('snacks').picker.grep()<CR>"
        ),

        dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
      }

      -- footer
      dashboard.section.footer.val = ""

      -- layout (clean centered structure)
      dashboard.config.layout = {
        { type = "padding", val = 9 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 5 },
        dashboard.section.footer,
      }

      -- setup
      alpha.setup(dashboard.config)
    end,
  },
}
