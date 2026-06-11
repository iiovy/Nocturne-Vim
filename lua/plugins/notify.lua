return {
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require('notify')

      require('notify').setup({
        stages = 'fade_in_slide_out',
        timeout = 3000,
        background_colour = '#000000',
        render = 'compact',
      })
    end,
  },
}
