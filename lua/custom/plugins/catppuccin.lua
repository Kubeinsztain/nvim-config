-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- load immediately so it shows in "loaded" section
    priority = 1000, -- ensure it's set before other colors
    opts = {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = true,
        notify = true,
        mini = true,
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
