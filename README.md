# Kevin's Dotfiles

Personal dotfiles repository containing configurations for development tools, window managers, terminal emulators, and various CLI utilities.

## Overview

This repository uses [Dotter](https://github.com/SuperCuber/dotter) for managing symlinked configurations across macOS.

## Quick Start

```bash
# Deploy all configurations
dotter deploy default

# Preview what would be deployed (dry run)
dotter deploy --dry-run
```

## Configuration Categories

### Development Tools

- **nvim/** - Neovim configuration with LazyVim framework
- **cursor/** - Cursor editor settings and keybindings
- **git/** - Git global configuration
- **lazygit/** - Git TUI configuration
- **prettier/** - Prettier formatting rules

### Terminal & Shell

- **zsh/** - Zsh configuration with modular setup
- **kitty/** - Kitty terminal emulator configuration
- **tmux/** - Tmux terminal multiplexer configuration
- **ghostty/** - Ghostty terminal configuration

### macOS System Management

- **yabai/** - Tiling window manager configuration
- **skhd/** - Simple hotkey daemon for keyboard shortcuts
- **hammerspoon/** - Lua-based automation and window management
- **karabiner/** - Keyboard customization and key remapping
- **raycast/** - Raycast launcher and productivity tool configuration

### CLI Utilities & Productivity

- **homebrew/Brewfile** - Package management with extensive tool collection
- **espanso/** - Text expansion tool configuration
- **ripgrep/** - Search tool configuration
- **mitmproxy/** - HTTP/HTTPS proxy tool keybindings

## Neovim Configuration

The Neovim setup includes 100+ carefully curated plugins organized by category. See [nvim/README.md](nvim/README.md) for complete documentation.

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

## Development

See [AGENTS.md](AGENTS.md) for detailed guidance on working with this repository.

## License

MIT
