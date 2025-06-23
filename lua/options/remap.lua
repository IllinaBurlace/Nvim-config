vim.keymap.set("i", "jj", "<Esc>")

local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>ff", fzf.files)
vim.keymap.set("n", "<leader>fb", fzf.buffers)
vim.keymap.set("n", "<leader>fg", fzf.grep)

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

local toggleterm = require("toggleterm")
vim.keymap.set("n", "<leader>TT", "<cmd>ToggleTerm<cr>")
