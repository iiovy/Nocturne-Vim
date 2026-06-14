local map = vim.keymap.set

-- Files
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- File explorer
map("n", "<leader>e", "<cmd>Oil --float<CR>", { desc = "File explorer" })

-- Terminal
map("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })

-- Snacks
map("n", "<leader>ff", function()
  require("snacks").picker.files()
end, { desc = "Find files" })

map("n", "<leader>fr", function()
  require("snacks").picker.recent()
end, { desc = "Recent files" })

map("n", "<leader>fg", function()
  require("snacks").picker.grep()
end, { desc = "Search text" })

map("n", "<leader>gf", function()
  require("snacks").picker.git_files()
end, { desc = "Git files" })

map("n", "<leader>gs", function()
  require("snacks").picker.git_status()
end, { desc = "Git status" })

-- Gitsigns
map("n", "]h", function() require("gitsigns").next_hunk() end, { desc = "Next hunk" })
map("n", "[h", function() require("gitsigns").prev_hunk() end, { desc = "Prev hunk" })
map("n", "<leader>gp", function() require("gitsigns").preview_hunk() end, { desc = "Preview hunk" })
map("n", "<leader>gr", function() require("gitsigns").reset_hunk() end, { desc = "Reset hunk" })
map("n", "<leader>gb", function() require("gitsigns").blame_line() end, { desc = "Blame line" })

-- LSP
map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "gr", vim.lsp.buf.references)
map("n", "K", vim.lsp.buf.hover)

map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>ca", vim.lsp.buf.code_action)

-- Twilight
map("n", "<leader>tw", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- Theme toggle
local theme = require("core.themes.toggle")
map("n", "<leader>tt", theme.toggle, { desc = "Toggle Theme" })

-- Neominimap
vim.keymap.set("n", "<leader>mm", function()
  vim.cmd("Neominimap Toggle")
end, { desc = "Toggle minimap" })
