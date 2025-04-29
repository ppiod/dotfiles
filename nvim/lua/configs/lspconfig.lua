local lspconfig = require("lspconfig")
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local mason_registry = require("mason-registry")
local elixirls_path = mason_registry.get_package("elixir-ls"):get_install_path() .. "/language_server.sh"

lspconfig.elixirls.setup {
  cmd = { elixirls_path },
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    elixirLS = {
      dialyzerEnabled = false,
      fetchDeps = false
    }
  }
}

require("nvchad.configs.lspconfig").defaults()

local servers = {
  "ts_ls",
  "dockerls",
  "lua_ls",
  "jsonls",
  "svelte"
  -- "gopls",
}

vim.lsp.enable(servers)
