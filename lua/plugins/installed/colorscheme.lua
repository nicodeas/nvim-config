return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
      transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
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
