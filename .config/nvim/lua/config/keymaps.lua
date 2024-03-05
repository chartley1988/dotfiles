-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>xd", require("telescope.builtin").diagnostics, { desc = "[xd] List Diagnostics" })
vim.keymap.set(
  "n",
  "<leader>;",
  require("telescope.builtin").current_buffer_fuzzy_find,
  { desc = "[xq] Fuzzy find current buffer" }
)
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })
vim.api.nvim_set_keymap("n", "<space>d", ":Telescope file_browser<CR>", { noremap = true })

-- Call fuzzy finder for Obsidian Notes
vim.api.nvim_set_keymap(
  "n",
  "<space>nf",
  ":Telescope git_files cwd=~/Documents/obsidian/<CR>",
  { noremap = true, desc = "Open Obsidian in File Finder" }
)
vim.api.nvim_set_keymap(
  "n",
  "<space>nn",
  ":Telescope live_grep search_dirs=~/Documents/obsidian/<CR>",
  { noremap = true, desc = "Live Grep Obsidian Notes" }
)

-- Set window switch keys for tmux
vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft, { noremap = true, desc = "Window to the left" })
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight, { noremap = true, desc = "Window to the right" })
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp, { noremap = true, desc = "Window to the up" })
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown, { noremap = true, desc = "Window to the down" })
