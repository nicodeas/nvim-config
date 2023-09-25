return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    return {
      sources = {
        nls.builtins.formatting.black,
        nls.builtins.diagnostics.flake8.with({
          extra_args = { "--ignore=E501,E203,W503,W504", "--per-file-ignores=__init__.py:F401,W391" },
        }),
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.prettierd,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                filter = function(current_client)
                  --  only use null-ls for formatting instead of lsp server
                  return current_client.name == "null-ls"
                end,
                bufnr = bufnr,
              })
            end,
          })
        end
      end,
    }
  end,
}
