return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
  },
  config = function()
    local neogit = require 'neogit'

    vim.keymap.set('n', '<leader>gg', '<CMD>Neogit<CR>', { desc = 'Git - Neogit' })
    vim.keymap.set('n', '<leader>gc', '<CMD>Neogit<CR>', { desc = 'Git - Commit' })

    neogit.setup {
      telescope_sorter = function()
        return require('telescope').extensions.fzf.native_fzf_sorter()
      end,
    }
  end,
}
