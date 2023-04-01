return {
  "tpope/vim-fugitive",
  keys = function()
    return {
      { "<leader>gg", "<cmd>Git<cr>", desc = "Git" },
      { "<leader>gp", "<cmd>Git pull<cr>", desc = "Git pull" },
      { "<leader>gP", "<cmd>Git push<cr>", desc = "Git push" },
    }
  end,
}
