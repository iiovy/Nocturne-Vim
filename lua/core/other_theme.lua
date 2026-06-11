local M = {}

function M.load()
  vim.cmd('highlight clear')
  vim.g.colors_name = 'grayscale'

  local set = vim.api.nvim_set_hl

  local NONE = 'NONE'

  -- core text
  set(0, 'Normal', { fg = '#ffffff', bg = NONE })
  set(0, 'NormalNC', { fg = '#d0d0d0', bg = NONE })

  set(0, 'Comment', { fg = '#807f7d', italic = true })

  -- numbers ui text
  set(0, 'LineNr', { fg = '#555555', bg = NONE })
  set(0, 'CursorLineNr', { fg = '#aaaaaa', bg = NONE })

  set(0, 'Visual', { bg = '#2a2a2a' })
  set(0, 'CursorLine', { bg = NONE })

  -- StatusLine
  set(0, 'StatusLine', { fg = '#cccccc', bg = NONE })
  set(0, 'StatusLineNC', { fg = '#666666', bg = NONE })

  set(0, 'TabLine', { fg = '#888888', bg = NONE })
  set(0, 'TabLineSel', { fg = '#ffffff', bg = NONE })
  set(0, 'TabLineFill', { bg = NONE })

  set(0, 'WinSeparator', { fg = '#333333', bg = NONE })
  set(0, 'VertSplit', { fg = '#333333', bg = NONE })

  set(0, 'SignColumn', { bg = NONE })
  set(0, 'FoldColumn', { bg = NONE })
end

return M
