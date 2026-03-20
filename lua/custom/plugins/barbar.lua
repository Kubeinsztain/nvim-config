return {
  'romgrk/barbar.nvim',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = false,
    auto_hide = false,
    clickable = true,
    focus_on_close = 'left',

    icons = {
      button = '×',
    },
  },
  keys = {
    -- Navigation (Alt + [ / ])
    { '<A-]>', '<Cmd>BufferNext<CR>', desc = 'Next buffer' },
    { '<A-[>', '<Cmd>BufferPrevious<CR>', desc = 'Previous buffer' },

    -- Reordering (Alt + Shift + [ / ])
    { '<A-S-]>', '<Cmd>BufferMoveNext<CR>', desc = 'Move buffer next' },
    { '<A-S-[>', '<Cmd>BufferMovePrevious<CR>', desc = 'Move buffer prev' },

    -- (keep your existing leader-based ones if you want)
    { '<leader>bn', '<Cmd>BufferMoveNext<CR>', desc = 'Move buffer next' },
    { '<leader>bp', '<Cmd>BufferMovePrevious<CR>', desc = 'Move buffer prev' },

    -- Pick buffer (letter-based jump)
    { '<leader>bb', '<Cmd>BufferPick<CR>', desc = 'Pick buffer' },

    -- Close buffer
    { '<leader>x', '<Cmd>BufferClose<CR>', desc = 'Close buffer' },

    -- Force close buffer
    { '<leader>X', '<Cmd>BufferClose!<CR>', desc = 'Force close buffer' },
  },
}
