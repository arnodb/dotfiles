return {
  {
    "prettier/vim-prettier",
    build = "yarnpkg install && git restore .",
    config = function()
      require 'config.vim-prettier'
    end,
  },
}
