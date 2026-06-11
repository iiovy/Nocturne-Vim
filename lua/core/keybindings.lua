vim.g.mapleader = ' '

local map = vim.keymap.set

-- Files
map('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save file' })
map('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit' })
map('n', '<leader>Q', '<cmd>qa!<CR>', { desc = 'Quit all' })

-- Oil
map('n', '<leader>e', '<cmd>Oil --float<CR>', { desc = 'File explorer' })

-- Buffers
map('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Delete buffer' })
map('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })

-- Window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- ToggleTerm
map('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = 'Terminal' })

-- Search / snacks
map('n', '<leader>h', "<cmd>lua require('snacks').picker()<CR>", { desc = 'Snacks Picker' })

-- Gitsigns
map('n', ']h', '<cmd>Gitsigns next_hunk<CR>')
map('n', '[h', '<cmd>Gitsigns prev_hunk<CR>')

map('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>')
map('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<CR>')
map('n', '<leader>gb', '<cmd>Gitsigns blame_line<CR>')

-- LSP
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'gD', vim.lsp.buf.declaration)
map('n', 'gr', vim.lsp.buf.references)
map('n', 'K', vim.lsp.buf.hover)

map('n', '<leader>rn', vim.lsp.buf.rename)
map('n', '<leader>ca', vim.lsp.buf.code_action)

-- twilight
vim.keymap.set('n', '<leader>tw', '<cmd>Twilight<CR>', {
  desc = 'Toggle Twilight',
})
