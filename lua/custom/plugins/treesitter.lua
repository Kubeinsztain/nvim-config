return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'c',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc',
        'css',
        'javascript',
        'json',
        'typescript',
        'tsx',
        'yaml',
        'gleam',
      },
      auto_install = true,
      highlight = { enable = true },
    }
  end,
}
