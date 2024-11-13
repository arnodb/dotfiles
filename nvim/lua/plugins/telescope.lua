return {
  { "nvim-telescope/telescope-file-browser.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require 'config.telescope'
    end,
  },
}
