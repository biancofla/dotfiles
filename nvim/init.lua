require("config.lazy")

-- GENERAL

-- Set leader key.
vim.g.mapleader = " "
-- Enable lines numbering.
vim.wo.number = true
-- Set TAB as 4 space character.
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- Undo.
vim.keymap.set("n", "U", "<Cmd>redo<CR>")
-- Move to next focusable window.
vim.keymap.set("n", "<leader>f", "<c-w>w")
-- Disable macro recording.
vim.keymap.set("n", "q", "<Nop>")

-- NEOTREE

-- Toggle.
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

-- BUFFERLINE

-- Cycle to next tab.
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>")
-- Cycle to previous tab.
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>")
-- Close current tab,
vim.keymap.set("n", "<leader>bd", "<Cmd>bp<bar>sp<bar>bn<bar>bd!<CR>")

-- TELESCOPE

local builtin = require("telescope.builtin")
-- Find files.
vim.keymap.set("n", "<leader>ff", builtin.find_files)
-- Live grep.
vim.keymap.set("n", "<leader>fg", builtin.live_grep)

