# AGENTS.md

Kevin's macOS dotfiles, deployed with [dotter](https://github.com/SuperCuber/dotter).

## Deployment

- `.dotter/global.toml` maps repo paths to their targets. Everything is symlinked, so edits take effect immediately.
- A new file needs a mapping in `global.toml` plus `dotter deploy`. Removing a file means removing its mapping too.
- Verify with `dotter deploy --dry-run`.
- `.dotter/cache.toml` is generated; don't edit it. Machine-specific overrides go in `.dotter/local.toml`.

## Neovim

- LazyVim config. Plugin specs live in `nvim/lua/plugins/`, one file per plugin.
- To understand a plugin's options or internals, read its source: `~/.local/share/nvim/dev/<plugin>` (local checkouts, preferred by lazy.nvim when present), otherwise `~/.local/share/nvim/lazy/<plugin>`.
- Format Lua with Stylua (`nvim/stylua.toml`).
