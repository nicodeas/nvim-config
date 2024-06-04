return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    -- priority = 1000,
    -- config = function(_, opts)
    --   require("kanagawa").setup(opts)
    --   vim.cmd("colorscheme kanagawa")
    -- end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    opts = {
      style = "night",
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },
  -- { "EdenEast/nightfox.nvim" },
  -- { "bluz71/vim-nightfly-colors", name = "nightfly" },
  {
    "catppuccin/nvim",
    -- priority=1000,
    name = "catppuccin",
    -- config = function()
    --   vim.cmd([[colorscheme catppuccin-frappe]])
    -- end,
    opts = {
      integrations = {
        cmp = true,
        nvimtree = true,
      },
    },
  },
}
