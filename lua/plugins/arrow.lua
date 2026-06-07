return {
  "otavioschwanck/arrow.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    show_icons = true,
    leader_key = ";",
  },

  config = function(_, opts)
    require("arrow").setup(opts)

    vim.keymap.set("n", "<leader>a", function()
      require("arrow.persist").toggle()
    end, { desc = "Arrow: bookmark current file" })

    vim.keymap.set("n", "<leader>b", function()
      require("arrow.ui").openMenu()
    end, { desc = "Arrow: open menu" })
  end,
}
