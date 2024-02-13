return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "prettierd",
      "stylua",
      "shfmt",
    },
    automatic_installation = true,
  },
  config = function(_, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    local function ensure_installed()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end
    if mr.refresh then
      mr.refresh(ensure_installed)
    else
      ensure_installed()
    end
  end,
}
