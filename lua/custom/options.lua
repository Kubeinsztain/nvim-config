-- Custom file for specifying options for nvim

-- Spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

-- LSP, Linters etc
vim.lsp.enable 'biome'
vim.lsp.enable 'gleam'

-- Relative line numbers
vim.opt.relativenumber = true
