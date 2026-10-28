# Neovim Plugins

A minimal LazyVim configuration. This lists every plugin it loads, including those pulled in by LazyVim and its enabled extras.

## Core Infrastructure

- **lazy.nvim** - Modern plugin manager for Neovim featuring lazy loading, lockfile support, and a clean UI for managing plugins.
- **LazyVim** - Neovim configuration framework built on lazy.nvim providing a complete IDE-like experience with sane defaults.
- **plenary.nvim** - Lua utility library providing common functions used by many Neovim plugins.
- **nui.nvim** - UI component library providing the building blocks for creating popups, splits, and input fields.
- **sqlite.lua** - SQLite/LuaJIT binding and opinionated wrapper for storing and retrieving data.
- **coop.nvim** - Straightforward asynchronous workflow management for Neovim, providing utilities for running tasks concurrently.

## UI/UX & Themes

- **tokyonight.nvim** - Dark and light Neovim theme with clean aesthetics and extensive plugin integrations.
- **catppuccin** - Soothing pastel color scheme for Neovim with four flavours (Latte, Frappé, Macchiato, Mocha) and extensive plugin integration support.
- **lualine.nvim** - Blazing fast and highly configurable statusline plugin written in Lua with extensive customization options.
- **bufferline.nvim** - Snazzy buffer line with tabpage integration featuring LSP indicators, sorting, grouping, and aesthetic customization options inspired by GUI editors.
- **noice.nvim** - Completely replaces the UI for messages, cmdline, and popupmenu with a modern, customizable interface.
- **mini.icons** - Icon provider for Neovim with support for files, directories, LSP, and more without requiring external fonts.
- **snacks.nvim** - Collection of small QoL plugins including animate, dashboard, notifier, terminal, and more utilities.
- **which-key.nvim** - Shows available keybindings in a popup as you type, helping remember and discover mappings.
- **smear-cursor.nvim** - Animates the cursor with a smear effect in all terminals inspired by Neovide's cursor animation.
- **mini.indentscope** - Visualizes and operates on indent scope with animated scope indicators.

## File Navigation & Management

- **neo-tree.nvim** - File system browser with support for multiple layouts (sidebar, floating, netrw-style) and various tree structures.
- **oil.nvim** - File explorer that lets you edit your filesystem like a normal buffer with buffer-like operations.
- **oil-copy.nvim** - Extension for oil.nvim allowing copying of file contents recursively.
- **oil-git.nvim** - Shows git status for files and directories in oil.nvim buffers.
- **telescope.nvim** - Highly extendable fuzzy finder over lists with pickers for files, buffers, LSP, git, and more.
- **telescope-fzf-native.nvim** - FZF-based fuzzy sorter for Telescope written in C for maximum performance.
- **telescope-fzy-native.nvim** - FZY algorithm sorter for Telescope as a compiled binary.
- **smart-open.nvim** - Telescope extension providing intelligent file suggestions based on frecency and context.
- **copy-reference.nvim** - Copies the current file path, with the line or selected line range, to the clipboard.

## Git Integration

- **gitsigns.nvim** - Git integration showing signs for added, modified, and removed lines with hunk navigation and staging capabilities.

## LSP & Completion

- **nvim-lspconfig** - Collection of LSP server configurations providing quickstart configs for Neovim's built-in LSP client.
- **mason.nvim** - Portable package manager for Neovim that installs and manages LSP servers, DAP servers, linters, and formatters.
- **mason-lspconfig.nvim** - Extension for mason.nvim that automatically configures lspconfig servers installed via Mason.
- **blink.cmp** - Performant, batteries-included completion plugin featuring a custom fuzzy matcher, LSP support, snippet integration, and auto-bracket functionality with sub-millisecond update times.
- **friendly-snippets** - Community-driven collection of snippets for various programming languages compatible with multiple snippet engines.
- **lazydev.nvim** - Faster LuaLS setup for Neovim plugin development with automatic workspace configuration and type definitions.
- **SchemaStore.nvim** - Provides access to the SchemaStore catalog for JSON/YAML schema validation.
- **trouble.nvim** - Pretty list for diagnostics, references, quickfix, and location lists with integrated LSP support.

## Code Editing & Text Manipulation

- **nvim-treesitter** - Treesitter configurations and abstraction layer providing syntax highlighting, incremental selection, and more.
- **nvim-treesitter-textobjects** - Syntax-aware textobjects for selecting, moving, and swapping code structures.
- **nvim-treesitter-textsubjects** - Context-aware Treesitter selection that expands to the smartest surrounding node.
- **nvim-ts-autotag** - Automatically closes and renames HTML/XML tags using Treesitter.
- **nvim-surround** - Add, delete, and change surrounding delimiters with powerful and intuitive keybindings.
- **ts-comments.nvim** - Enhances native Neovim comments with Treesitter-aware language-specific comment strings.
- **nvim-autopairs** - Automatically insert and delete paired characters like brackets, quotes, and parentheses.
- **mini.ai** - Extends and creates textobjects using Treesitter with customizable patterns for intelligent selection.
- **mini.align** - Align text interactively with visual feedback and support for various alignment strategies.
- **mini.bracketed** - Navigate through various brackets, quotes, and other paired delimiters with consistent keybindings.
- **mini.operators** - Extends Neovim operators with additional text manipulation capabilities like evaluate, exchange, multiply, and replace.
- **nvim-various-textobjs** - Collection of various textobjects for different code structures and patterns.
- **flash.nvim** - Navigate code with search labels, enhanced character motions, and Treesitter integration for precise jumping.
- **nvim-spider** - Enhanced w, e, b motions that skip insignificant characters for more precise navigation.
- **substitute.nvim** - Enhanced substitute, exchange, and yank operations with dot-repeat support.
- **cutlass.nvim** - Overrides delete operations to not affect the default register, separating cut and delete operations like modern editors.
- **yanky.nvim** - Improved yank and put operations with yank history, cycle through yanks, and special paste modes.
- **dial.nvim** - Extended increment/decrement plugin supporting dates, hex colors, boolean toggles, and custom patterns with smart detection.
- **coerce.nvim** - Case coercion plugin for changing between camelCase, snake_case, PascalCase, kebab-case, and other naming conventions with simple keybindings.
- **treesj** - Splits and joins code blocks (arrays, objects, statements) intelligently using Treesitter.
- **sort.nvim** - Sorting plugin with support for various sort algorithms and delimiters.
- **thethethe.nvim** - Autocorrects common typos and misspellings as you type (like "teh" to "the").

## Formatting & Linting

- **conform.nvim** - Lightweight yet powerful formatter plugin with support for multiple formatters per filetype and asynchronous formatting capabilities.
- **nvim-lint** - Asynchronous linter plugin complementing LSP with support for external linting tools.

## Search & Replace

- **grug-far.nvim** - Find and replace plugin with a visual interface inspired by the "grug brain" philosophy of simplicity.

## Utilities & Productivity

- **better-escape.nvim** - Maps key sequences like 'jk' or 'jj' to escape insert mode without the typical delay, using a smart detection algorithm that avoids the timeout issues of traditional mappings.
- **hardtime.nvim** - Helps break bad Vim habits by discouraging repeated key presses and encouraging more efficient motions.
- **focus.nvim** - Automatically resize windows to focus on the active buffer with smart split management and layout persistence.
- **todo-comments.nvim** - Highlights and searches for TODO, HACK, BUG, and other comment annotations.
- **persistence.nvim** - Automatically saves sessions per directory and restores them on demand.
- **gp.nvim** - LLM prompts inside Neovim, used here to fix spelling and grammar in the selection.
- **faster.nvim** - Optimizes Neovim performance by selectively disabling features for large files, based on file size or line count thresholds.
- **gx.nvim** - Enhanced gx command for opening URLs and file paths under cursor with support for multiple protocols and handlers.
