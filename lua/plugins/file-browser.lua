return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope file_browser path=%:p:h <cr>", desc = "Browse files (cwd)", { noremap = true } },
    { "<leader>fF", "<cmd>Telescope file_browser <cr>", desc = "Browse files (root)", { noremap = true } },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
