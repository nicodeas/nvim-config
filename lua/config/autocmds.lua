-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("compile_with_cc", { clear = true }),
  pattern = {
    "c",
  },
  callback = function()
    -- TODO: Update to use flags used in Chris's lectures
    vim.keymap.set("n", "<F2>", "<cmd>!cc -o '%:r' '%'<CR>", { silent = true })
  end,
})
