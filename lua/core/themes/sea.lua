local M = {}

function M.load()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.g.colors_name = "sea"

  local set = vim.api.nvim_set_hl
  local NONE = "NONE"

  -- Background / base
  set(0, "Normal", { fg = "#d7f1ff", bg = "#0b1b24" })
  set(0, "NormalNC", { fg = "#b8d6e6", bg = "#08141b" })

  -- Comments (deep ocean mist)
  set(0, "Comment", { fg = "#4f7f8f", italic = true })

  -- Strings (sea foam)
  set(0, "String", { fg = "#7fd1c3" })

  -- Variables / identifiers
  set(0, "Identifier", { fg = "#bde7ff" })
  set(0, "@variable", { fg = "#bde7ff" })
  set(0, "@variable.builtin", { fg = "#a6e3ff" })

  -- Functions (bright cyan glow)
  set(0, "Function", { fg = "#5eead4", bold = true })

  -- Keywords (deep teal highlight)
  set(0, "Keyword", { fg = "#38bdf8", bold = true })
  set(0, "Statement", { fg = "#38bdf8" })

  -- Types
  set(0, "Type", { fg = "#7dd3fc" })

  -- Constants
  set(0, "Constant", { fg = "#a5f3fc" })

  -- Operators
  set(0, "Operator", { fg = "#94a3b8" })

  -- Numbers
  set(0, "@number", { fg = "#67e8f9" })

  -- UI elements
  set(0, "LineNr", { fg = "#2a4a5a", bg = NONE })
  set(0, "CursorLineNr", { fg = "#7dd3fc", bg = NONE })

  set(0, "Visual", { bg = "#123a4a" })
  set(0, "CursorLine", { bg = "#0f2a36" })

  set(0, "StatusLine", { fg = "#d7f1ff", bg = "#0f2a36" })
  set(0, "StatusLineNC", { fg = "#4f7f8f", bg = "#0b1b24" })

  set(0, "WinSeparator", { fg = "#1f3b47", bg = NONE })
  set(0, "VertSplit", { fg = "#1f3b47", bg = NONE })

  -- Floating windows
  set(0, "NormalFloat", { fg = "#d7f1ff", bg = "#0f2a36" })
  set(0, "FloatBorder", { fg = "#38bdf8", bg = "#0f2a36" })

  -- Punctuation
  set(0, "@punctuation", { fg = "#94a3b8" })
  set(0, "@punctuation.delimiter", { fg = "#94a3b8" })
  set(0, "@punctuation.bracket", { fg = "#7dd3fc" })

  -- Diagnostics
  set(0, "DiagnosticError", { fg = "#fb7185" })
  set(0, "DiagnosticWarn", { fg = "#fbbf24" })
  set(0, "DiagnosticInfo", { fg = "#38bdf8" })
  set(0, "DiagnosticHint", { fg = "#5eead4" })

  set(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#fb7185" })
  set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#fbbf24" })
  set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#38bdf8" })
  set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#5eead4" })
end

return M
