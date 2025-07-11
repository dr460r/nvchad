-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lsp = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  html = {},
  cssls = {},
  gopls = {},
  kotlin_language_server = {},
  wgsl_analyzer = {},
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        diagnostics = { enable = false },
      },
    },
  },
  -- pylyzer = {},
  pyright = {},
  ts_ls = {},
  -- glsl_analyzer = {},
  svelte = {},
}

-- lsps with default config
for name, opts in pairs(servers) do
  -- print(name)
  opts.on_attach = nvlsp.on_attach
  opts.on_init = nvlsp.on_init
  opts.capabilities = nvlsp.capabilities
  lsp[name].setup(opts)
end
