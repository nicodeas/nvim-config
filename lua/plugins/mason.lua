return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "prisma-language-server",
      "clangd",
      "docker-compose-language-service",
      "dockerfile-language-server",
    },
  },
}
