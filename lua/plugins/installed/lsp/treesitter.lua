return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  keys = {
    { "<C-space>", desc = "Increment selection" },
    { "<bs>",      desc = "Schrink selection",  mode = "x" },
  },
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "vue",
      "c",
      "cpp",
    },
    auto_install = true,
    highlight = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        node_decremental = "<bs>",
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
