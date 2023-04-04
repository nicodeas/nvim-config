return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.flake8.with({ extra_args = { "--ignore=E501,E203,W503,W504" } }),
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.google_java_format,
      },
    }
  end,
}
