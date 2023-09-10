return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    config = function()
      require "jho.telescope.setup"
      require "jho.telescope.keys"
    end,

  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  "nvim-telescope/telescope-file-browser.nvim",
  "nvim-telescope/telescope-ui-select.nvim",
  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require("neoclip").setup()
    end,
  },
}