local M = {}

local sea = require("core.themes.sea")
local greyscale = require("core.themes.greyscale")

local state = nil

function M.load()
  greyscale.load()
  state = "greyscale"
end

function M.toggle()
  if state == "greyscale" then
    sea.load()
    state = "sea"
  else
    greyscale.load()
    state = "greyscale"
  end
end

return M
