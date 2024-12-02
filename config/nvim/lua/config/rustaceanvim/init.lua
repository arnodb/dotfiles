local on_attach_common = require 'config.rustaceanvim.on-attach'

vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
  },
  -- LSP configuration
  server = {
    on_attach = on_attach_common,
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {
        cargo = {
          buildScripts = {
            enable = true,
          },
          features = 'all',
        },
        workspace = {
          ignoredFolders = {
            "$HOME",
            "$HOME/.cargo/**",
            "$HOME/.rustup/**"
          },
        },
      },
    },
  },
  -- DAP configuration
  dap = {
  },
}
