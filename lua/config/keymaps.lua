-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap
map.set("i", "jk", "<Esc>")

-- move highlighted text up and down
map.set("v", "K", ":m '<-2<CR>gv=gv")
map.set("v", "J", ":m '>+1<CR>gv=gv")

-- allow half page jumps and center cursor in middle of page
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")

-- cursor in the middle of the page during searching
map.set("n", "n", "nzz")
map.set("n", "N", "Nzz")

-- Removing default mappings
map.del("n", "<leader>ft")
map.del("n", "<leader>fT")

-- delete this keymap while trying vim fugitive
map.del("n", "<leader>gG")
