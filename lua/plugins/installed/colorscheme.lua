return{
    "catppuccin/nvim",
    priority=1000,
    name="catppuccin",
    config=function()
      vim.cmd([[colorscheme catppuccin-frappe]])
    end,
    opts = {
      integrations={
        cmp=true,
        nvimtree=true
      }
    }
}
