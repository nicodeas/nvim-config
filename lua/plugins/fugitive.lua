return {
  "tpope/vim-fugitive",
  keys = function()
    return {
      { "<leader>gg", "<cmd>Git<cr>", desc = "Git" },
    }
  end,
}
