return {
  "ThePrimeagen/harpoon",
  keys = function()
    return {
      {
        "<leader>ha",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Harpoon add mark",
      },
      {
        "<leader>hh",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Menu",
      },
      {
        "<leader>h<tab>",
        function()
          require("harpoon.ui").nav_next()
        end,
        desc = "Next mark",
      },
      {
        "<leader>h1",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        desc = "Mark 1",
      },
      {
        "<leader>h2",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        desc = "Mark 2",
      },
      {
        "<leader>h3",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        desc = "Mark 3",
      },
      {
        "<leader>h4",
        function()
          require("harpoon.ui").nav_file(4)
        end,
        desc = "Mark 4",
      },
    }
  end,
}
