local on_attach = function(_, bufnr)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Goto previous diagnostic message" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Goto next diagnostic message" })

  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end

  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
  nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")

  -- See `:help K` for why this keymap
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")

  nmap("J", vim.lsp.buf.signature_help, "Signature Documentation")

  nmap("<leader>rs", ":LspRestart<Cr>", "[R]e[S]tart")

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    vim.lsp.buf.format()
  end, { desc = "Format current buffer with LSP" })
end

local servers = {
  lua_ls = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
    workspace = {
      library = {
        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
        [vim.fn.stdpath("config") .. "/lua"] = true,
      },
    },
  },
  pyright = {
    python = {
      analysis = {
        typeCheckingMode = "off",
        diagnosticMode = "openFilesOnly",
        autoSearchPaths = true,
        useLibraryCodeFortypes = true,
      },
    },
  },
  volar = {},
  tsserver = {},
  emmet_ls = {},
  clangd = {},
  dockerls = {},
  tailwindcss = {},
  bashls = {},
  gopls = {},
}

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig",
    { "j-hui/fidget.nvim", opts = {} },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local mason_lspconfig = require("mason-lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
    })
    mason_lspconfig.setup_handlers({
      function(server_name)
        -- NOTE: only the keys settings and filetypes have been configured
        -- will need to add keys to this if there are more keys to setting up LSPs
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        })
      end,
    })
  end,
}
