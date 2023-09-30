return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
          n = {
            ["q"] = actions.close, -- close telescope with q
          },
        },
      },
    })
    telescope.load_extension("fzf")
    local keymap = vim.keymap
    keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Find string in cwd" })
    keymap.set("n", "<leader>*", builtin.grep_string, { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>tr", builtin.resume, { desc = "[T]elescope [R]esume" })
  end,
}
