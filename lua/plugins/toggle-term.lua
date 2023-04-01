return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = function()
    return {
      {
        "<leader>t",
        "<cmd>ToggleTerm direction=float<CR>",
        desc = "Terminal",
        mode = "n",
      },
      { "qq", "<cmd>close<cr>", mode = "t" },
    }
  end,
}
