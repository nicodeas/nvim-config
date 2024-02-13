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

          -- lazy background
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          -- mason background
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          -- telescope settings
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
  -- { "rose-pine/neovim", name = "rose-pine" },
  -- { "EdenEast/nightfox.nvim" },
  -- { "bluz71/vim-nightfly-colors", name = "nightfly" },
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
