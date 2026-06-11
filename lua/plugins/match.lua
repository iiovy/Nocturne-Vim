return {
  'ankushbhagats/match.nvim',

  opts = {
    prefix = '',
    anchor = 'NE',
    style = 'minimal',
    border = 'rounded',
    border_hl = 'Function',
  },

  keys = {
    {
      '<leader>m',
      '<cmd>Match<CR>',
      desc = 'Match Search',
    },
  },
}
