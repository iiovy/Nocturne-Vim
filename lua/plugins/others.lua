return {
  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- trouble.nvim
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
    opts = {},
  },

  -- persistence.nvim
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
  },

  -- undo-glow.nvim
  {
    "y3owk1n/undo-glow.nvim",
    version = "*",
    event = "VeryLazy",

    opts = {
      animation = {
        enabled = true,
        duration = 300,
        animation_type = "zoom",
        window_scoped = true,
      },

      highlights = {
        undo = { hl_color = { bg = "#693232" } },
        redo = { hl_color = { bg = "#2F4640" } },
        yank = { hl_color = { bg = "#565c5b" } },
      },

      priority = 2048 * 3,
    },

    keys = {
      {
        "u",
        function()
          require("undo-glow").undo()
        end,
        desc = "Undo with glow",
      },
      {
        "U",
        function()
          require("undo-glow").redo()
        end,
        desc = "Redo with glow",
      },
    },

    init = function()
      vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
          require("undo-glow").yank()
        end,
      })
    end,
  },
}
