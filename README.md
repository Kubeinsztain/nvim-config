# Neovim Configuration

A clean, modular Neovim configuration based on kickstart.nvim, reorganized for better maintainability.

## 📁 Structure

```markdown
.
├── init.lua                    # Main config entry point (minimal, just loads modules)
└── lua/custom/
    ├── keymaps.lua            # Basic keybindings
    ├── autocmds.lua           # Autocommands
    ├── options.lua            # Vim options/settings
    └── plugins/               # All plugins (auto-loaded)
        ├── lsp.lua            # LSP configuration & tool installation
        ├── completion.lua     # Auto-completion (blink.cmp)
        ├── formatting.lua     # Code formatters (conform.nvim)
        ├── lint.lua           # Linters (nvim-lint)
        ├── telescope.lua      # Fuzzy finder
        ├── treesitter.lua     # Syntax highlighting
        ├── which-key.lua      # Keymap hints
        ├── mini.lua           # Mini.nvim modules (files, surround, statusline)
        └── ...                # Other plugins
```

## 🚀 Quick Start

1. **Clone this config:**

   ```bash
   git clone <your-repo> ~/.config/nvim
   ```

2. **Open Neovim:**

   ```bash
   nvim
   ```

   Plugins will auto-install via lazy.nvim on first launch.

3. **Check health:**

   ```vim
   :checkhealth
   ```

## 📦 Adding New Tools

### Add an LSP Server

1. Open `lua/custom/plugins/lsp.lua`
2. Add to the `servers` table:

   ```lua
   servers = {
     lua_ls = {},
     ts_ls = {},
     pyright = {},  -- Add this for Python
   }
   ```

   That's it! It auto-installs and configures.

### Add a Formatter

1. **Install:** In `lua/custom/plugins/lsp.lua`, add to `ensure_installed`:

   ```lua
   ensure_installed = {
     'stylua',
     'prettier',  -- Add this
   }
   ```

2. **Configure:** In `lua/custom/plugins/formatting.lua`, add to `formatters_by_ft`:

   ```lua
   formatters_by_ft = {
     lua = { 'stylua' },
     javascript = { 'prettier' },  -- Add this
   }
   ```

### Add a Linter

1. **Install:** In `lua/custom/plugins/lsp.lua`, add to `ensure_installed`:

   ```lua
   ensure_installed = {
     'markdownlint',
     'eslint_d',  -- Add this
   }
   ```

2. **Configure:** In `lua/custom/plugins/lint.lua`, add to `linters_by_ft`:

   ```lua
   linters_by_ft = {
     markdown = { 'markdownlint' },
     javascript = { 'eslint_d' },  -- Add this
   }
   ```

### Add a New Plugin

Create a new file in `lua/custom/plugins/` (e.g., `my-plugin.lua`):

```lua
return {
  'owner/repo',
  opts = {
    -- your config here
  },
}
```

It will auto-load on next restart.

## 🔍 Finding Tool Names

1. Open Neovim and run `:Mason`
2. Browse categories: **LSP servers**, **Formatters**, **Linters**, **DAP**
3. Copy the exact name shown in Mason

## ⌨️ Key Bindings

- `<leader>` = `<Space>`
- `<leader>sf` - Search files
- `<leader>sg` - Search by grep
- `<leader>sh` - Search help
- `<leader>m` - Toggle file explorer (mini.files)
- `<leader>f` - Format buffer
- `grd` - Go to definition
- `grr` - Go to references
- `grn` - Rename symbol

See `lua/custom/keymaps.lua` and individual plugin files for more.

## 📚 Plugin Documentation

Each plugin file contains its configuration. Check these files to modify behavior:

- **LSP & Tools** → `lua/custom/plugins/lsp.lua`
- **Formatting** → `lua/custom/plugins/formatting.lua`
- **Linting** → `lua/custom/plugins/lint.lua`
- **Completion** → `lua/custom/plugins/completion.lua`
- **File Navigation** → `lua/custom/plugins/telescope.lua`
- **Syntax Highlighting** → `lua/custom/plugins/treesitter.lua`
- **UI & Statusline** → `lua/custom/plugins/mini.lua`

## 🛠️ Useful Commands

- `:Lazy` - Manage plugins (update, install, clean)
- `:Mason` - Manage LSP servers, formatters, linters
- `:checkhealth` - Diagnose issues
- `:ConformInfo` - Check formatter status
- `:LspInfo` - Check LSP server status

## 🎨 Customization

All customization happens in `lua/custom/`:

- **Vim options** → `options.lua`
- **Keymaps** → `keymaps.lua`
- **Autocommands** → `autocmds.lua`
- **Plugins** → `plugins/*.lua`

## 📝 Notes

- Based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) but reorganized
- Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management
- Uses [mason.nvim](https://github.com/mason-org/mason.nvim) for tool installation
- All plugins auto-load from `lua/custom/plugins/` directory
