local buf_nmap = U.keymap.buf_nmap
local function lua_nmap(lhs, rhs, opts)
  buf_nmap(lhs, '<cmd>lua  ' .. rhs .. '<CR>', opts)
end

return function(client)
  client.server_capabilities.semanticTokensProvider = nil

  -- GOTO mappings
  lua_nmap('gD', 'vim.lsp.buf.declaration()')
  lua_nmap('gd', 'vim.lsp.buf.definition()')
  lua_nmap('K', 'vim.lsp.buf.hover()')
  lua_nmap('gr', 'vim.lsp.buf.references()')
  lua_nmap('<space>gh', 'vim.lsp.buf.signature_help()')
  lua_nmap('gi', 'vim.lsp.buf.implementation()')
  -- ACTION mappings
  lua_nmap('<leader>af', 'vim.lsp.buf.code_action()')
  lua_nmap('<leader>ar', 'vim.lsp.buf.rename()')
  -- lua_map('<leader>ar',  'vim.lsp.buf.rename()')
  -- Few language severs support these three
  lua_nmap('<leader>ai', 'vim.lsp.buf.incoming_calls()')
  lua_nmap('<leader>ao', 'vim.lsp.buf.outgoing_calls()')

  -- Diagnostics mapping
  lua_nmap('<leader>ed', 'vim.lsp.diagnostic.show_line_diagnostics()')
  lua_nmap('<leader>a', 'vim.diagnostic.setloclist()')
  lua_nmap('<leader>en', 'vim.diagnostic.goto_next()')
  lua_nmap('<leader>ep', 'vim.diagnostic.goto_prev()')
  lua_nmap('<leader>d', 'vim.diagnostic.open_float()')

  --vim.cmd [[autocmd! BufWritePre <buffer> lua vim.lsp.buf.format(nil, 1000)]]
  vim.cmd [[autocmd! BufWritePre *.rs lua vim.lsp.buf.format(nil, 1000)]]

  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end

  vim.cmd [[autocmd! CursorHold  <buffer> lua vim.lsp.buf.document_highlight()]]
  vim.cmd [[autocmd! CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()]]
  vim.cmd [[autocmd! CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]
end
