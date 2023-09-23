return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "pyright",
      "prisma-language-server",
      "clangd",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "prettierd",
      "stylua",
      "emmet-ls",
      "tailwindcss-language-server",
    },
    automatic_installation = true,
  },
}
