return {
  {
    "sainnhe/everforest",
    lazy = false,
    name = "everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
