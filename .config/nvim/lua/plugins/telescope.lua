return {
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    config = function()
      -- Search Obsidian
      vim.api.nvim_set_keymap(
        "n",
        "<space>to",
        ":Telescope git_files cwd=~/Documents/obsidian/<CR>",
        { noremap = true, desc = "Obsidian - Search Files" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<space>tn",
        ":Telescope live_grep search_dirs=~/Documents/obsidian/<CR>",
        { noremap = true, desc = "Obsidian - Live Grep" }
      )
    end,
  },
}
