return {
  -- Autocomplete
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-nvim-lua' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-calc' },
  { 'hrsh7th/cmp-cmdline' },
  {
    'hrsh7th/nvim-cmp',
    requires = {
      'quangnguyen30192/cmp-nvim-ultisnips',
      config = function()
        require('cmp_nvim_ultisnips').setup {}
      end,
      requires = { 'nvim-treesitter/nvim-treesitter' },
    },
    config = function()
      require 'config.cmp'
    end,
  },

}
