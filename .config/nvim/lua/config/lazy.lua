local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax", "catppuccin" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
}, {
  "pwntester/octo.nvim",
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("octo").setup({
      enable_builtin = true,
      use_local_fs = true,
    })
    vim.cmd([[hi OctoEditable guibg=none]])
    vim.treesitter.language.register("markdown", "octo")
  end,
  keys = {
    { "<leader>O", "<cmd>Octo<cr>", desc = "Octo" },
    { "<leader>Op", "<cmd>Octo pr list<cr>", desc = "Octo pr list" },
  },
})

-- Add filetype for mdx files
vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "astro", "tsx", "typescript", "html", "css", "json", "markdown" },
  auto_install = true,
  highlight = {
    enable = true,
  },
})

-- Configure tree-sitter to read mdx as md
vim.treesitter.language.register("markdown", "mdx")

-- Configure Headlines
require("headlines").setup({
  markdown = {
    fat_headline_upper_string = "",
    fat_headline_lower_string = "_",
  },
})

-- Astro Config
require("lspconfig").astro.setup({})
vim.filetype.add({
  extension = {
    astro = "astro",
  },
})
vim.treesitter.language.register("markdown", "mdx")
-- Astro devicons
require("nvim-web-devicons").setup({
  strict = true,
  override_by_extension = {
    astro = {
      icon = "",
      color = "#EF8547",
      name = "astro",
    },
  },
})

require("telescope").setup({
  defaults = {
    path_display = { "truncate" },
  },
  extensions = {
    file_browser = {
      depth = 1,
      grouped = true,
    },
  },
})

-- Simplify Telescop paths in file finder

-- Setup file browswer
require("telescope").setup({
  require("telescope").load_extension("file_browser"),
})
