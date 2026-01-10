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

-- Move lines up/down with Alt + j / k (VS Code style)

-- Normal mode
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move line up' })

-- Visual mode (move selected block)
vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
