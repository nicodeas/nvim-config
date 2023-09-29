return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",

  dependencies = { "nvim-tree/nvim-web-devicons", "famiu/bufdelete.nvim" },
  version = "*",
  opts = {
    options = {
      separator_style = "thick",
      offsets = {
        {
          filetype = "NvimTree",
          text = "Explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
  keys = {
    { "L", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "H", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
    {
      "<leader>bd",
      function(bufnr)
        require("bufdelete").bufdelete(bufnr)
      end,
      desc = "Delete current buffer",
    },
  },
}
