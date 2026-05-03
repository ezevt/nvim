# nvim config

Minimal Neovim config in Lua, focused on C development.

## Requirements

- Neovim >= 0.11
- git (for plugin manager bootstrap)
- clangd (`sudo apt install clangd`)
- A terminal with true color support

## Installation

```bash
git clone <repo-url> ~/.config/nvim
nvim
```

On first launch lazy.nvim installs all plugins automatically. Treesitter parsers compile in the background.

## Plugins

| Plugin | Purpose |
|---|---|
| tokyonight.nvim | Colorscheme (default) |
| gruvbox.nvim | Colorscheme (alternative) |
| nvim-treesitter | Syntax highlighting |
| nvim-lspconfig | LSP client (clangd) |
| nvim-cmp | Completion |
| LuaSnip | Snippet engine |
| toggleterm.nvim | Floating terminal |
| bufferline.nvim | Buffer tabs |
| telescope.nvim | Fuzzy finder |

## Keymaps

### General

| Key | Action |
|---|---|
| `<Space>` | Leader |
| `<leader>q` | Close buffer |
| `<leader>/` | Clear search highlight |
| `<leader>m` | Save all + run make |
| `<C-h/j/k/l>` | Navigate windows |
| `<Tab>` / `<S-Tab>` | Next / prev buffer |
| `<A-j>` / `<A-k>` | Move line down / up |

### Terminal

| Key | Action |
|---|---|
| `<leader>t` | Toggle floating terminal |
| `<Esc>` | Exit terminal mode |

### File search (Telescope)

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Open buffers |
| `<leader>fh` | Help tags |

### LSP (active in C files)

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>e` | Show diagnostic |
| `[d` / `]d` | Prev / next diagnostic |

### Completion

| Key | Action |
|---|---|
| `<Tab>` | Next suggestion |
| `<S-Tab>` | Prev suggestion |
| `<CR>` | Confirm |
| `<C-Space>` | Force open |
| `<C-e>` | Abort |

## Colorscheme

Default is tokyonight. To switch to gruvbox, edit `lua/plugins/init.lua`:

```lua
vim.cmd.colorscheme("gruvbox")
```
