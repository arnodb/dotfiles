return {
  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'config.lualine'
    end,
  },
}
