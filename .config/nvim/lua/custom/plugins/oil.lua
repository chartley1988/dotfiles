return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>f', '<CMD>Oil .<CR>', { desc = 'Oil - File Directory' })
  end,
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
