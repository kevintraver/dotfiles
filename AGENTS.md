# AGENTS.md

Kevin's macOS dotfiles, deployed with [dotter](https://github.com/SuperCuber/dotter).

## Deployment

- `.dotter/global.toml` maps repo paths to their targets. Everything is symlinked, so edits take effect immediately.
- A new file needs a mapping in `global.toml` plus `dotter deploy`. Removing a file means removing its mapping too.
- Verify with `dotter deploy --dry-run`.
- `.dotter/cache.toml` is generated; don't edit it. Machine-specific overrides go in `.dotter/local.toml`.
