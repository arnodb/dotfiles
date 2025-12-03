require 'config.nvim-lspconfig.handlers'
local on_attach_common = require 'config.nvim-lspconfig.on-attach'
local on_init_common = require 'config.nvim-lspconfig.on-init'
local capabilities = require 'config.nvim-lspconfig.capabilities'

local servers = {
  lua_ls = vim.lsp.config('lua', {
    on_attach = on_attach_common,
    on_init = on_init_common,
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  }),
  jsonls = vim.lsp.config('jsonls', {
    capabilities = capabilities,
  }),
  omnisharp = {
    cmd = {
      'omnisharp',
      '--languageserver',
      '--hostPID',
      tostring(vim.fn.getpid()),
    },
  },
  -- Use 'rustaceanvim' to do the setup
  --rust_analyzer = {
  --  settings = {
  --    ["rust-analyzer"] = {
  --      cargo = {
  --        buildScripts = {
  --          enable = true,
  --        },
  --      features = 'all',
  --      },
  --    check = {
  --      command = 'clippy',
  --      extraArgs = { '--', '-D', 'warnings' },
  --    },
  --      workspace = {
  --        ignoredFolders = {
  --          "$HOME",
  --          "$HOME/.cargo/**",
  --          "$HOME/.rustup/**"
  --        },
  --      },
  --    },
  --  },
  --},
  vimls = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, vim.tbl_extend('force', {
    flags = { debounce_text_changes = 150 },
    on_attach = on_attach_common,
    on_init = on_init_common,
    capabilities = capabilities,
  }, opts))
end
