-- Autoformat
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'biome-check' },
      javascriptreact = { 'biome-check' },
      typescript = { 'biome-check' },
      typescriptreact = { 'biome-check' },
      json = { 'biome-check' },
      css = { 'biome-check' },
      scss = { 'biome-check' },
      less = { 'biome-check' },
      html = { 'biome-check' },
      vue = { 'biome-check' },
      svelte = { 'biome-check' },

      formatters = {
        biome = {
          command = 'biome',
          args = { 'check', '--stdin-file-path', '$FILEPATH' },
          stdin = true,
        },
      },
    },
  },
}
