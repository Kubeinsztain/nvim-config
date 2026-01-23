-- Linting
return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require 'lint'
    
    -- Configure linters by filetype
    -- Add linters for your filetypes here
    lint.linters_by_ft = {
      markdown = { 'markdownlint' },
      -- python = { 'ruff' },  -- example
      -- javascript = { 'eslint_d' },  -- example
    }

    -- Create autocommand which carries out the actual linting
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        -- Only run the linter in buffers that you can modify
        if vim.bo.modifiable then
          lint.try_lint()
        end
      end,
    })
  end,
}
