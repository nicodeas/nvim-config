return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "EdenEast/nightfox.nvim" },
  { "bluz71/vim-nightfly-colors", name = "nightfly" },
  -- {
  --     "catppuccin/nvim",
  --     priority=1000,
  --     name="catppuccin",
  --     config=function()
  --       vim.cmd([[colorscheme catppuccin-frappe]])
  --     end,
  --     opts = {
  --       integrations={
  --         cmp=true,
  --         nvimtree=true
  --       }
  --     }
  -- }
}
