-- init.lua
vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core modules
require("core.options")
require("core.keybindings")
require("core.themes.toggle").load()

-- Setup lazy.nvim
require("lazy").setup({
  spec = { { import = "plugins" } },
  checker = { enabled = true },
})
