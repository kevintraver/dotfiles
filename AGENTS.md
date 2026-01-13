# AGENTS.md

## Table of Contents

- [Agent Workflow](#agent-workflow)
- [Repository Overview](#repository-overview)
- [Architecture](#architecture)
- [Configuration Categories](#configuration-categories)
- [Common Commands](#common-commands)
- [Development Guidelines](#development-guidelines)
- [Key Architecture Patterns](#key-architecture-patterns)
- [Working with Configurations](#working-with-configurations)

This file provides guidance to AI coding assistants (e.g., Cursor, Claude Code) when working in this repository.

## Agent Workflow

1. Read the latest system, developer, and user instructions, then skim this guide before making any edits.
2. Inspect only the relevant files; prefer fast search tools like `rg` and keep repository context in mind.
3. Outline a short plan for any non-trivial task, then update it as work progresses.
4. Make minimal, high-signal changes that respect existing formatting, tooling, and symlinked deployment paths.
5. Validate changes with the commands in this guide (e.g., `dotter deploy --dry-run`, targeted tooling checks) whenever feasible.
6. Summarize results clearly, referencing touched files and noting follow-up steps or verification gaps.

## Repository Overview

This is Kevin Traver's personal dotfiles repository, containing configurations for development tools, window managers, terminal emulators, and various CLI utilities.

## Architecture

### Project Structure & Module Organization

- Application directories mirror their target config roots:
  - `nvim/` - LazyVim setup with Lua modules under `lua/` and per-file overrides under `after/`
  - `zsh/` - Modular startup scripts (aliases, completions, keymaps, etc.)
  - `homebrew/` - Manages the shared `Brewfile`
- Shared formatter settings live in `prettier/prettierrc` and `nvim/stylua.toml`

### Configuration Categories

**Development Tools:**

- `nvim/` - Neovim configuration with LazyVim framework
- `cursor/` - Cursor editor settings and keybindings
- `git/` - Git global configuration
- `lazygit/` - Git TUI configuration
- `prettier/` - Prettier formatting rules

**Terminal & Shell:**

- `zsh/` - Zsh configuration with modular setup (aliases, completions, keymaps, etc.)
- `kitty/` - Kitty terminal emulator configuration
- `tmux/` - Tmux terminal multiplexer configuration
- `ghostty/` - Ghostty terminal configuration

**macOS System Management:**

- `yabai/` - Tiling window manager configuration
- `skhd/` - Simple hotkey daemon for keyboard shortcuts
- `hammerspoon/` - Lua-based automation and window management
- `karabiner/` - Keyboard customization and key remapping
- `raycast/` - Raycast launcher and productivity tool configuration

**CLI Utilities & Productivity:**

- `homebrew/Brewfile` - Package management with extensive tool collection
- `espanso/` - Text expansion tool configuration
- `ripgrep/` - Search tool configuration
- `mitmproxy/` - HTTP/HTTPS proxy tool keybindings

### Dotter Configuration Management

- **Main config**: `.dotter/global.toml` defines file mappings from repository to target locations
- **Target type**: Configurations use symbolic links by default (`default_target_type = "symbolic"`)
- **Symbolic linking**: Most directories (nvim, hammerspoon, raycast, etc.) are linked as entire directories with `recurse = false`
- **Machine-specific overrides**: Use `.dotter/local.toml` for per-machine customizations
- **Cache**: `.dotter/cache.toml` is generated; do not edit it manually—clear state with Dotter commands instead.

## Common Commands

### Dotter Management

```bash
# Deploy all configurations
dotter deploy default

# Preview what would be deployed (dry run)
dotter deploy --dry-run

# Undeploy configurations
dotter undeploy
```

### Package Management

```bash
# Install/update all Homebrew packages
brew bundle --file=homebrew/Brewfile

# Install missing packages only
brew bundle check --file=homebrew/Brewfile || brew bundle --file=homebrew/Brewfile
```

### Neovim Configuration

```bash
# Sync plugins after config changes
nvim --headless "+Lazy sync" +qa

# Check health for missing dependencies
nvim --headless "+checkhealth" +qa
```

## Development Guidelines

### Coding Style & Naming Conventions

- Use two-space indentation across Lua, JSON, YAML, and shell fragments
- Follow Stylua (width 80) and Prettier (single quotes, no semicolons) settings
- Group shell helpers in dedicated files (`aliases.zsh`, `keymaps.zsh`)
- Name new modules after the tool or feature they configure
- Prefer descriptive key names in JSON configs and keep option blocks alphabetized

### Testing Guidelines

- Run `dotter deploy --dry-run` to verify the deployment plan stays clean
- For Neovim changes, execute `nvim --headless "+checkhealth" +qa` to catch missing dependencies
- Include any follow-up package additions in the Brewfile
- Manually relaunch affected apps (e.g., Kitty, tmux) to confirm new bindings or themes

### Commit & Pull Request Guidelines

- Follow Conventional Commits style (`type(scope): summary`, optional `!` for breaking changes)
- Reference impacted tools in the scope (`fix(nvim)`, `chore(homebrew)`)
- Keep messages imperative
- Pull requests should outline motivation, testing performed, and link related issues
- Add screenshots or command logs when visual changes are involved

### Security & Configuration Tips

- Do not commit credentials, API tokens, or per-seat data
- Prefer local-only overrides through `.dotter/local.toml`
- Sanitize machine-specific paths before sharing logs
- Avoid hard-coding absolute paths outside `~/.config`

## Key Architecture Patterns

### Modular Zsh Setup

The Zsh configuration is split into focused modules:

- `zshrc` - Main configuration entry point
- `aliases.zsh` - Command aliases
- `completion.zsh` - Tab completion settings
- `editor.zsh` - Editor-related settings
- `keymaps.zsh` - Key bindings
- `history/` - Directory for shell history

### Symbolic Link Strategy

Most configurations use directory-level symbolic links rather than file-level links, making it easier to manage nested configuration structures while allowing applications to create additional files within their config directories.

### Development Tool Integration

The setup integrates multiple development tools:

- Git with delta for diff viewing
- Neovim as primary editor with LSP configurations
- Terminal multiplexing with tmux
- Enhanced CLI tools (ripgrep, fd, bat, etc.) via Homebrew

### Neovim Plugins

The Neovim configuration leverages a comprehensive plugin ecosystem organized into functional categories:

**Core Infrastructure (5 plugins):**

- lazy.nvim, LazyVim, plenary.nvim, promise-async, nvim-nio

**UI/UX & Themes (15 plugins):**

- catppuccin, tokyonight.nvim, lualine.nvim, bufferline.nvim, noice.nvim, dressing.nvim, nvim-notify, nvim-web-devicons, mini.icons, edgy.nvim, snacks.nvim, which-key.nvim, screenkey.nvim, hacker.nvim, smear-cursor.nvim

**File Navigation & Management (16 plugins):**

- neo-tree.nvim, oil.nvim, oil-copy.nvim, telescope.nvim with multiple extensions (fzf-native, fzy-native, project, switch, lazy-plugins, helpgrep, undo), smart-open.nvim, project.nvim, other-nvim, quickfiles.nvim, nvim-file-location

**Git Integration (15 plugins):**

- gitsigns.nvim, neogit, fugit2.nvim, diffview.nvim, git-conflict.nvim, git-blame.nvim, gitlinker.nvim, advanced-git-search.nvim, telescope-git-diffs.nvim, mini-git, nvim-tinygit, git-dev.nvim, git-prompt-string-lualine.nvim, octo.nvim, tardis.nvim

**LSP & Completion (13 plugins):**

- nvim-lspconfig, mason.nvim, mason-lspconfig.nvim, blink.cmp, blink.compat, lazydev.nvim, neoconf.nvim, SchemaStore.nvim, nvim-navic, outline.nvim, trouble.nvim, refjump.nvim

**Code Editing & Text Manipulation (35+ plugins):**

- nvim-treesitter ecosystem (treesitter, context, textobjects, ts-autotag, outer, utils, treewalker.nvim)
- Text objects and motions (nvim-surround, mini.ai, mini.align, mini.bracketed, mini.operators, nvim-various-textobjs, flash.nvim, nvim-spider, vim-matchup)
- Editing operations (Comment.nvim, ts-comments.nvim, nvim-autopairs, substitute.nvim, cutlass.nvim, yanky.nvim, dial.nvim, coerce.nvim, toggle-quotes.nvim, sibling-swap.nvim, treesj, sort.nvim, thethethe.nvim, stringbreaker.nvim)

**Formatting & Linting (8 plugins):**

- conform.nvim, mason-conform.nvim, nvim-lint, none-ls.nvim, cspell.nvim, guess-indent.nvim, tabs-vs-spaces.nvim, smartcolumn.nvim

**Testing & Debugging (12 plugins):**

- neotest with adapters (jest, rspec), nvim-dap ecosystem (dap, dap-ui, dap-virtual-text, dap-ruby, mason-nvim-dap.nvim), one-small-step-for-vimkind, nvim-coverage, debugprint.nvim, nvim-chainsaw, overseer.nvim

**Language-Specific Tools:**

- TypeScript/JavaScript: typescript-tools.nvim, typecheck.nvim, ts-error-translator.nvim
- Rust: rustaceanvim
- Ruby: nvim-dap-ruby
- JSON/YAML: jsonfly.nvim, jq.nvim, jq-playground.nvim, nvim-jqx
- Markdown: markview.nvim, render-markdown.nvim, peek.nvim, markdown-toc, markdown-togglecheck, toc.nvim, md-pdf.nvim

**Visual Enhancements (12 plugins):**

- nvim-colorizer.lua, nvim-highlight-colors, color-picker.nvim, rainbow-delimiters.nvim, vim-illuminate, stcursorword, highlight-undo.nvim, hlargs.nvim, mini.indentscope, visual-whitespace.nvim

**Utilities & Productivity (20+ plugins):**

- better-escape.nvim, before.nvim, bookmarks.nvim, buffer-reopen.nvim, cloak.nvim, hardtime.nvim, precognition.nvim, toggleterm.nvim, numb.nvim, nvim-window-picker, winshift.nvim, focus.nvim, neogen, todo-comments.nvim, jot.lua, coop.nvim, faster.nvim

**Specialized Tools:**

- Undo/Redo: undotree, time-machine.nvim, nvim-fundo
- Quickfix & Lists: nvim-bqf, nvim-pqf, qf.nvim, quicker.nvim
- Search & Replace: grug-far.nvim, nvim-rip-substitute
- HTTP/REST: kulala.nvim, curl.nvim
- Screenshots & Sharing: nvim-silicon, paperplanes.nvim
- AI Assistance: codeium.nvim, sidekick.nvim

**Plugin Management Best Practices:**

- Plugins are managed via lazy.nvim with lazy loading enabled for optimal startup time
- Configuration files are organized in `nvim/lua/plugins/` with per-plugin or grouped configurations
- Use `nvim --headless "+Lazy sync" +qa` to sync plugins after configuration changes
- Run `nvim --headless "+checkhealth" +qa` to verify plugin health and dependencies
- Check `vim-startuptime` plugin output to profile and optimize load times

**Neovim Plugin Source Code Reference:**

When configuring Neovim plugins or answering questions about how they work, consult the plugin source code located at:

```
~/.local/share/nvim/dev/
```

This directory contains the full source of installed Neovim plugins. Reading the source is often more reliable than documentation for understanding:

- Available configuration options and their default values
- Internal APIs and exposed functions
- Event hooks and autocommand patterns
- Module structure and require paths

## Working with Configurations

### Making Changes

1. Edit configurations directly in this repository
2. Changes take effect immediately due to symbolic linking
3. For new files/packages, update `.dotter/global.toml` and run `dotter deploy`
4. Run `dotter deploy --dry-run` before committing to ensure the deployment plan stays clean

### Adding New Configurations

1. Create directory/file in repository
2. Add mapping in `.dotter/global.toml` under `[default.files]`
3. Run `dotter deploy` to create symbolic links
4. Confirm the resulting plan with `dotter deploy --dry-run`

### Backup Strategy

- Git tracks all configurations
- Karabiner has automatic backups in `karabiner/automatic_backups/`
- Dotter cache in `.dotter/cache.toml` tracks deployment state
