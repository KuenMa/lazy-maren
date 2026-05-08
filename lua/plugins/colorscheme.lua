return {
  { "rebelot/kanagawa.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "Shatur/neovim-ayu" },
  -- { 'shaunsingh/nord.nvim'  },
  {
    "neanias/everforest-nvim",
    lazy = false,
    config = function()
      background = "hard"
    end,
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = { dim_inactive = true } },
  { "savq/melange-nvim" },
}
