-- ~/.config/nvim/lua/plugins/tokyonight.lua
return {
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    lazy = false, -- load immediately so it shows in "loaded" section
    priority = 1000, -- ensure it's set before other colors
    opts = {
      style = 'night',
      on_highlights = function(hl, c)
        hl.FlashMatch = { bg = c.bg_highlight, fg = c.blue }
        hl.FlashCurrent = { bg = c.blue, fg = c.bg, bold = true }
        hl.FlashLabel = { bg = c.magenta, fg = c.bg, bold = true }
      end,
    },
    config = function(_, opts)
      require('tokyonight').setup(opts)
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
