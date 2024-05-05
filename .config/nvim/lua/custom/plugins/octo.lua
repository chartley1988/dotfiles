return {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('octo').setup()
    vim.keymap.set('n', '<leader>gi', '<CMD>Octo issue create<CR>', { desc = 'Github - Create Issue' })
  end,
}
