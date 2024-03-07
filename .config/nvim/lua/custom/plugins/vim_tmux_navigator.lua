return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  config = function()
    -- Set window switch keys for tmux
    vim.keymap.set('n', '<C-h>', vim.cmd.TmuxNavigateLeft, { noremap = true, desc = 'Window to the left' })
    vim.keymap.set('n', '<C-l>', vim.cmd.TmuxNavigateRight, { noremap = true, desc = 'Window to the right' })
    vim.keymap.set('n', '<C-k>', vim.cmd.TmuxNavigateUp, { noremap = true, desc = 'Window to the up' })
    vim.keymap.set('n', '<C-j>', vim.cmd.TmuxNavigateDown, { noremap = true, desc = 'Window to the down' })
  end,
}
