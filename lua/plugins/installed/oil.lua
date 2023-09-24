return {
  "stevearc/oil.nvim",
  opts = {},
  event = "VeryLazy",
  config = function(_, opts)
    require("oil").setup(opts)
    local keymap = vim.keymap
    keymap.set("n", "<leader>e", "<Cmd>Oil<Cr>", { desc = "Toggle File Explorer" })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
