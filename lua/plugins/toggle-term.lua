return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    local localTerminal = Terminal:new({ hidden = true, direction = "float" })

    function LazygitToggle()
      lazygit:toggle()
    end

    function LocalTerminalToggle()
      localTerminal:toggle()
    end

    return {
      {
        "<leader>t",
        "<cmd>lua LocalTerminalToggle()<CR>",
        desc = "Terminal",
        mode = "n",
      },
      { "qq", "<cmd>close<cr>", mode = "t" },
      { "<leader>lg", "<cmd>lua LazygitToggle()<CR>" },
    }
  end,
}
