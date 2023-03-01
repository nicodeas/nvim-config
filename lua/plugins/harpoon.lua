return {
  "ThePrimeagen/harpoon",
  keys = function()
    local ui = require("harpoon.ui")
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
          ui.toggle_quick_menu()
        end,
        desc = "Menu",
      },
      {
        "<leader>h<tab>",
        function()
          ui.nav_next()
        end,
        desc = "Next mark",
      },
      {
        "<leader>h1",
        function()
          ui.nav_file(1)
        end,
        desc = "Next mark",
      },
      {
        "<leader>h2",
        function()
          ui.nav_file(2)
        end,
        desc = "Next mark",
      },
      {
        "<leader>h3",
        function()
          ui.nav_file(3)
        end,
        desc = "Next mark",
      },
      {
        "<leader>h4",
        function()
          ui.nav_file(4)
        end,
        desc = "Next mark",
      },
    }
  end,
}
