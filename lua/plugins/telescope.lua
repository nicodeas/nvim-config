return {
  "nvim-telescope/telescope.nvim",
  init = function()
    require("telescope").load_extension("harpoon")
  end,
  cmd = "Telescope",
  keys = { { "<leader>hm", "<cmd>Telescope harpoon marks<cr>", desc = "Preview marks" } },
}
