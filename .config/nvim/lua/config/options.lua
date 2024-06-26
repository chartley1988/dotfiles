-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.textwidth = 79
opt.wrap = true
opt.linebreak = true
opt.breakat = " ^I!@*-+;:,./?"
opt.breakindent = true
opt.colorcolumn = "80"
opt.columns = 80

opt.smartindent = true

-- Turn Spell check on
opt.spell = true
opt.spelllang = "en_us"

opt.foldmethod = "manual"
