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

-- splits
map.set("n", "<leader>|", ":vsplit<Cr>")
map.set("n", "<leader>-", ":split<Cr>")

-- close window
map.set("n", "<leader>wd", ":close<Cr>")

-- clear highlights from search with <Esc>
map.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear highlights from search" })

-- exit vim
map.set("n", "<leader>qq", ":qa<Cr>")
