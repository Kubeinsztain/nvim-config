-- ~/.config/nvim/lua/plugins/tokyonight.lua
return {
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    lazy = false, -- load immediately so it shows in "loaded" section
    priority = 1000, -- ensure it's set before other colors
    opts = {},
    config = function(_, opts)
      require('tokyonight').setup(opts)
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
