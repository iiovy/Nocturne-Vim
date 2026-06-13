-- Line Numbers
-- it toggles between the two when switching from normal to insert mode

vim.opt.number = true
vim.opt.relativenumber = true

local numbertoggle = vim.api.nvim_create_augroup("numbertoggle", {})

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = numbertoggle,
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  group = numbertoggle,
  callback = function()
    vim.opt.relativenumber = true
  end,
})

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.matchtime = 2

-- Files
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.autoread = true
vim.opt.swapfile = false

-- Clipboard & Mouse
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

-- Appearance
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.winborder = 'rounded'

vim.opt.fillchars = {
  eob = ' ',
}

-- Scrolling
vim.opt.scrolloff = 8

-- Wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- Command Line
vim.opt.history = 500
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'

-- Whitespace
vim.opt.list = true

vim.opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}

-- Other
vim.opt.completeopt = {
  'menu',
  'menuone',
  'noselect',
}

vim.opt.updatetime = 250

-- cursorline
vim.opt.cursorline = false
