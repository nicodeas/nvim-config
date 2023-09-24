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
      "tailwindcss-language-server",
      "vue-language-server",
    },
    automatic_installation = true,
  },
}
