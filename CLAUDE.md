# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a [LazyVim](https://lazyvim.github.io/)-based Neovim configuration. LazyVim itself handles most plugin management and defaults; customization lives in `lua/config/` and `lua/plugins/`.

## Architecture

- `init.lua` — entry point; bootstraps lazy.nvim and calls `config.lazy`
- `lua/config/lazy.lua` — sets up lazy.nvim, imports `LazyVim/LazyVim` (base config) and then `plugins` (local overrides)
- `lua/config/options.lua` — vim options (auto-loaded before lazy.nvim)
- `lua/config/keymaps.lua` — keymaps (loaded on `VeryLazy`)
- `lua/config/autocmds.lua` — autocommands (loaded on `VeryLazy`)
- `lua/plugins/*.lua` — each file returns a lazy.nvim plugin spec; all files here are auto-loaded
- `lazyvim.json` — tracks enabled LazyVim extras (e.g. `lazyvim.plugins.extras.lang.vue`)
- `lazy-lock.json` — lockfile for pinned plugin commits (auto-managed by lazy.nvim)

## Plugin Customization Pattern

To override or extend a LazyVim default plugin, add a spec in `lua/plugins/` using the same plugin name:

```lua
return {
  {
    "plugin/name",
    opts = { ... },         -- merged with LazyVim defaults via tbl_deep_extend
  },
}
```

Use `opts = function(_, opts)` when you need to extend lists (e.g. `vim.list_extend(opts.ensure_installed, {...})`), since deep merge does not concatenate arrays.

To disable a LazyVim plugin: `{ "plugin/name", enabled = false }`.

To enable a LazyVim extra: add it to `lazyvim.json` under `"extras"`, or use `:LazyExtras` in Neovim.

## Active Customizations

- **Vue support**: `lazyvim.plugins.extras.lang.vue` extra enabled; `.vue` filetype registered in `options.lua`
- **Formatting** (`lua/plugins/format.lua`): stylua for Lua, prettier for JS/Vue via `stevearc/conform.nvim`
- **Mason UI** (`lua/plugins/mason.lua`): rounded border, 80%/90% width/height
- **Keymaps**: `jj` → `<Esc>` in insert mode
- **Clipboard**: `unnamedplus` (system clipboard)
- **Encoding**: UTF-8 with GBK/Big5 fallback for `fileencodings`
- **Autoformat**: `vim.g.autoformat = true`

## Lua Formatting

Lua files are formatted with `stylua`. Config in `stylua.toml`: 2-space indentation, 120-column width.

```
stylua lua/
```

## Notes on `lua/plugins/lsp.lua`

This file is currently all commented out — it contains prior experiments with volar/vetur for Vue LSP. The active Vue LSP setup comes from the `lazyvim.plugins.extras.lang.vue` extra.
