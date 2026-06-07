-- lua/plugins/global-note.lua

return {
  "backdround/global-note.nvim",

  config = function()
    local global_note = require("global-note")

    global_note.setup({
      filename = "global.md",
      directory = vim.fn.expand("~/notes/"),

      additional_presets = {
        projects = {
          filename = "projects-to-do.md",
          title = "List of projects",
          command_name = "ProjectsNote",
        },
      },
    })

    vim.keymap.set("n", "<leader>n", function()
      global_note.toggle_note()
    end, { desc = "Global Note" })

    vim.keymap.set("n", "<leader>pn", function()
      global_note.toggle_note("projects")
    end, { desc = "Projects Note" })
  end,
}
