return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  event = "VeryLazy",
  opts = {
    -- ensure the servers for null-ls are installed here, language servers are defined in lspconfig
    ensure_installed = {
      "prettierd",
      "stylua",
    },
    automatic_installation = true,
  },
}
