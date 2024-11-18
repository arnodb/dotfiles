require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
  },
})

local nmap = U.keymap.nmap

nmap('<C-P>', '<cmd>Telescope find_files<CR>')

nmap('<leader>fb', '<cmd>Telescope buffers<CR>')
nmap('<leader>fs', '<cmd>Telescope lsp_workspace_symbols<CR>')
nmap('<leader>fd', '<cmd>Telescope diagnostics<CR>')
nmap('<leader>fr', '<cmd>Telescope lsp_references<CR>')
