return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end
      -- mappings to jump to hunks
      map("n", "]h", function()
        if vim.wo.diff then
          return "]h"
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return "<Ignore>"
      end, { expr = true })

      map("n", "[h", function()
        if vim.wo.diff then
          return "[h"
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return "<Ignore>"
      end, { expr = true })
      -- keymaps
      map("n", "<leader>hs", gs.stage_hunk, { desc = "[H]unk [S]tage" })
      map("n", "<leader>hr", gs.reset_hunk, { desc = "[H]unk [R]eset" })
      map("n", "<leader>bl", gs.blame_line, { desc = "[B]lame [L]ine" })
    end,
  },
}
