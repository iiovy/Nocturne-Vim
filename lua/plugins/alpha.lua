return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "3rd/image.nvim",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- dashboard content (top text + footer removed)
      dashboard.section.header.val = {}
      dashboard.section.footer.val = {}

      dashboard.section.buttons.val = {
        dashboard.button("e", "  New File", "<cmd>enew<CR>"),
        dashboard.button("f", "  Find Files", function()
          require("snacks").picker.files()
        end),
        dashboard.button("r", "  Recent Files", function()
          require("snacks").picker.recent()
        end),
      }

      alpha.setup(dashboard.config)

      -- image state (used to prevent duplicates)
      local img = nil
      local IMAGE_W, IMAGE_H = 80, 40

      local function clear_image()
        if img then
          pcall(function()
            img:clear()
          end)
          img = nil
        end
      end

      -- render dashboard image + layout
      local function render()
        local ok, image = pcall(require, "image")
        if not ok then
          return
        end

        clear_image()

        -- screen size
        local lines = vim.o.lines
        local cols = vim.o.columns

        -- center image horizontally and position vertically near top
        local image_x = math.floor((cols - IMAGE_W) / 2)
        local image_y = math.floor(lines * 0.08)

        -- load image from config assets folder
        img = image.from_file(
          vim.fn.stdpath("config") .. "/assets/Cold.png",
          {
            width = IMAGE_W,
            height = IMAGE_H,
            x = image_x,
            y = image_y,
          }
        )

        img:render()

        -- adjust spacing so buttons sit below image
        local buttons_height = #dashboard.section.buttons.val * 2
        local start_y = image_y + 10

        local remaining_space = lines - start_y - buttons_height
        local bottom_padding = math.max(math.floor(remaining_space * 0.69), 1)

        dashboard.config.layout = {
          { type = "padding", val = start_y + bottom_padding },
          dashboard.section.buttons,
        }

        alpha.redraw()
      end

      -- render when alpha starts
      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function()
          vim.defer_fn(render, 80)
        end,
      })

      vim.api.nvim_create_autocmd("VimResized", {
        callback = function()
          if vim.bo.filetype == "alpha" then
            vim.defer_fn(render, 80)
          end
        end,
      })

      -- cleanup image when leaving alpha
      vim.api.nvim_create_autocmd({
        "BufEnter",
        "BufWinEnter",
        "WinEnter",
      }, {
        callback = function()
          if vim.bo.filetype ~= "alpha" then
            clear_image()
          end
        end,
      })

      vim.api.nvim_create_autocmd("VimLeavePre", {
        callback = clear_image,
      })
    end,
  },
}
