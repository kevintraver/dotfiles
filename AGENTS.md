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
5. Validate changes with the commands in this guide (e.g., `dotter diff`, targeted tooling checks) whenever feasible.
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

# Check what would be deployed (dry run)
dotter deploy --dry-run

# Preview changes before committing
dotter diff

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

- Run `dotter diff` to verify the deployment plan stays clean
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

## Working with Configurations

### Making Changes

1. Edit configurations directly in this repository
2. Changes take effect immediately due to symbolic linking
3. For new files/packages, update `.dotter/global.toml` and run `dotter deploy`
4. Run `dotter diff` before committing to ensure the deployment plan stays clean

### Adding New Configurations

1. Create directory/file in repository
2. Add mapping in `.dotter/global.toml` under `[default.files]`
3. Run `dotter deploy` to create symbolic links
4. Confirm the resulting plan with `dotter diff`

### Backup Strategy

- Git tracks all configurations
- Karabiner has automatic backups in `karabiner/automatic_backups/`
- Dotter cache in `.dotter/cache.toml` tracks deployment state
