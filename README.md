# Kevin's Dotfiles

Personal dotfiles repository containing configurations for development tools, window managers, terminal emulators, and various CLI utilities.

## Overview

This repository uses [Dotter](https://github.com/SuperCuber/dotter) for managing symlinked configurations across macOS.

## Quick Start

```bash
# Deploy all configurations
dotter deploy default

# Check what would be deployed (dry run)
dotter deploy --dry-run

# Preview changes before committing
dotter diff
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

## Neovim Plugins (174 total)

This configuration includes 174 carefully curated Neovim plugins covering the complete development workflow:

### Core Infrastructure

- **lazy.nvim** - Modern plugin manager for Neovim featuring lazy loading, lockfile support, and a clean UI for managing plugins.
- **LazyVim** - Neovim configuration framework built on lazy.nvim providing a complete IDE-like experience with sane defaults.
- **plenary.nvim** - Lua utility library providing common functions used by many Neovim plugins.
- **promise-async** - Promise and async/await implementation for Lua providing async primitives.
- **nvim-nio** - Asynchronous IO library for Neovim inspired by Python's asyncio, providing primitives for async operations.

### UI/UX & Themes

- **catppuccin** - Soothing pastel color scheme for Neovim with four flavours (Latte, Frappé, Macchiato, Mocha) and extensive plugin integration support.
- **tokyonight.nvim** - Dark and light Neovim theme with clean aesthetics and extensive plugin integrations.
- **lualine.nvim** - Blazing fast and highly configurable statusline plugin written in Lua with extensive customization options.
- **bufferline.nvim** - Snazzy buffer line with tabpage integration featuring LSP indicators, sorting, grouping, and aesthetic customization options inspired by GUI editors.
- **noice.nvim** - Completely replaces the UI for messages, cmdline, and popupmenu with a modern, customizable interface.
- **dressing.nvim** - Improves the default Neovim UI interfaces for vim.ui.select and vim.ui.input with better-looking alternatives (note: archived, recommend snacks.nvim instead).
- **nvim-notify** - Fancy, configurable notification manager with animation support and notification history.
- **nvim-web-devicons** - Provides Nerd Font icons for use by plugins with both light and dark color variants.
- **mini.icons** - Icon provider for Neovim with support for files, directories, LSP, and more without requiring external fonts.
- **edgy.nvim** - Easily create and manage predefined window layouts with automatic positioning and sizing for sidebar windows.
- **snacks.nvim** - Collection of small QoL plugins including animate, dashboard, notifier, terminal, and more utilities.
- **which-key.nvim** - Shows available keybindings in a popup as you type, helping remember and discover mappings.
- **screenkey.nvim** - Displays pressed keys in a floating window for screencasts and demonstrations.
- **hacker.nvim** - Displays Matrix-style falling characters effect in Neovim for aesthetic purposes.
- **smear-cursor.nvim** - Animates the cursor with a smear effect in all terminals inspired by Neovide's cursor animation.

### File Navigation & Management

- **neo-tree.nvim** - File system browser with support for multiple layouts (sidebar, floating, netrw-style) and various tree structures.
- **oil.nvim** - File explorer that lets you edit your filesystem like a normal buffer with buffer-like operations.
- **oil-copy.nvim** - Extension for oil.nvim allowing copying of file contents recursively.
- **telescope.nvim** - Highly extendable fuzzy finder over lists with pickers for files, buffers, LSP, git, and more.
- **telescope-fzf-native.nvim** - FZF-based fuzzy sorter for Telescope written in C for maximum performance.
- **telescope-fzy-native.nvim** - FZY algorithm sorter for Telescope as a compiled binary.
- **telescope-project.nvim** - Telescope extension for switching between projects with recent project tracking.
- **telescope-switch.nvim** - Telescope extension for quick file switching between related files.
- **telescope-lazy-plugins.nvim** - Telescope picker for managing lazy.nvim plugins with actions and information.
- **telescope-helpgrep.nvim** - Grep through Neovim's help documentation using Telescope.
- **telescope-undo.nvim** - Visualizes and fuzzy-searches the undo tree allowing selective undo/redo.
- **smart-open.nvim** - Telescope extension providing intelligent file suggestions based on frecency and context.
- **project.nvim** - All-in-one project management with automatic project detection and Telescope integration.
- **other-nvim** - Opens alternative/related files (tests, implementation, styles) for the current buffer.
- **quickfiles.nvim** - Fast file management without a file explorer, allowing quick file and directory operations.
- **nvim-file-location** - Copies or displays file location information (path, line number) in various formats.

### Git Integration

- **gitsigns.nvim** - Git integration showing signs for added, modified, and removed lines with hunk navigation and staging capabilities.
- **neogit** - Magit-inspired git client for Neovim with a comprehensive interface for git operations.
- **fugit2.nvim** - Git interface plugin providing a comprehensive git workflow experience with blame, diff, and commit management.
- **diffview.nvim** - Single tabpage interface for cycling through diffs for all modified files in any git revision with merge conflict resolution support.
- **git-conflict.nvim** - Visualizes and resolves merge conflicts with highlighted conflict markers and convenient resolution commands.
- **git-blame.nvim** - Displays git blame information inline showing commit author and message for the current line.
- **gitlinker.nvim** - Generate permalinks to git hosting providers (GitHub, GitLab, etc.) for the current line or selection.
- **advanced-git-search.nvim** - Advanced git search extension for Telescope and fzf-lua that allows searching git history by commit message, content, and author with support for filtering and browsing commits.
- **telescope-git-diffs.nvim** - Telescope picker for viewing git diffs between commits.
- **mini-git** - Git integration from mini.nvim providing basic git operations and status information.
- **nvim-tinygit** - Lightweight git interface focusing on common git operations with minimal overhead.
- **git-dev.nvim** - Quickly open and manage git repositories for development with automatic cloning and directory management.
- **git-prompt-string-lualine.nvim** - Adds git-prompt-string integration to lualine.nvim statusline for displaying git repository information.
- **octo.nvim** - GitHub integration for editing issues, pull requests, and discussions directly in Neovim.
- **tardis.nvim** - Time travel through git history by scrolling through file revisions.

### LSP & Completion

- **nvim-lspconfig** - Collection of LSP server configurations providing quickstart configs for Neovim's built-in LSP client.
- **mason.nvim** - Portable package manager for Neovim that installs and manages LSP servers, DAP servers, linters, and formatters.
- **mason-lspconfig.nvim** - Extension for mason.nvim that automatically configures lspconfig servers installed via Mason.
- **blink.cmp** - Performant, batteries-included completion plugin featuring a custom fuzzy matcher, LSP support, snippet integration, and auto-bracket functionality with sub-millisecond update times.
- **blink.compat** - Compatibility layer for blink.cmp that allows using nvim-cmp completion sources, bridging the gap between the two completion ecosystems.
- **lazydev.nvim** - Faster LuaLS setup for Neovim plugin development with automatic workspace configuration and type definitions.
- **neoconf.nvim** - Manages project-local and global Neovim settings with JSON schema support.
- **SchemaStore.nvim** - Provides access to the SchemaStore catalog for JSON/YAML schema validation.
- **nvim-navic** - Statusline/winbar component showing current code context (breadcrumbs) using LSP information.
- **outline.nvim** - Code outline sidebar showing symbols from LSP or Treesitter with navigation support.
- **trouble.nvim** - Pretty list for diagnostics, references, quickfix, and location lists with integrated LSP support.
- **refjump.nvim** - Jump to next/previous LSP reference in the current buffer for the symbol under cursor.

### Code Editing & Text Manipulation

- **nvim-treesitter** - Treesitter configurations and abstraction layer providing syntax highlighting, incremental selection, and more.
- **nvim-treesitter-context** - Shows code context at the top of the window (function/class names) while scrolling.
- **nvim-treesitter-textobjects** - Syntax-aware textobjects for selecting, moving, and swapping code structures.
- **nvim-ts-autotag** - Automatically closes and renames HTML/XML tags using Treesitter.
- **treesitter-outer** - Provides motions for jumping to outer nodes in Treesitter for languages without traditional bracket pairs.
- **treesitter-utils** - Utility functions for working with Treesitter, providing reusable helpers.
- **treewalker.nvim** - Navigate the syntax tree using Treesitter-aware directional movements.
- **nvim-surround** - Add, delete, and change surrounding delimiters with powerful and intuitive keybindings.
- **Comment.nvim** - Smart and powerful commenting plugin that respects language-specific comment styles and provides both linewise and blockwise commenting.
- **ts-comments.nvim** - Enhances native Neovim comments with Treesitter-aware language-specific comment strings.
- **nvim-autopairs** - Automatically insert and delete paired characters like brackets, quotes, and parentheses.
- **mini.ai** - Extends and creates textobjects using Treesitter with customizable patterns for intelligent selection.
- **mini.align** - Align text interactively with visual feedback and support for various alignment strategies.
- **mini.bracketed** - Navigate through various brackets, quotes, and other paired delimiters with consistent keybindings.
- **mini.operators** - Extends Neovim operators with additional text manipulation capabilities like evaluate, exchange, multiply, and replace.
- **nvim-various-textobjs** - Collection of various textobjects for different code structures and patterns.
- **flash.nvim** - Navigate code with search labels, enhanced character motions, and Treesitter integration for precise jumping.
- **nvim-spider** - Enhanced w, e, b motions that skip insignificant characters for more precise navigation.
- **vim-matchup** - Extends % matching to language-specific keywords and shows matching pairs with highlighting.
- **substitute.nvim** - Enhanced substitute, exchange, and yank operations with dot-repeat support.
- **cutlass.nvim** - Overrides delete operations to not affect the default register, separating cut and delete operations like modern editors.
- **yanky.nvim** - Improved yank and put operations with yank history, cycle through yanks, and special paste modes.
- **dial.nvim** - Extended increment/decrement plugin supporting dates, hex colors, boolean toggles, and custom patterns with smart detection.
- **coerce.nvim** - Case coercion plugin for changing between camelCase, snake_case, PascalCase, kebab-case, and other naming conventions with simple keybindings.
- **toggle-quotes.nvim** - Toggles between single and double quotes for strings under cursor.
- **sibling-swap.nvim** - Swaps places of sibling elements like function arguments, array items, and object pairs.
- **treesj** - Splits and joins code blocks (arrays, objects, statements) intelligently using Treesitter.
- **sort.nvim** - Sorting plugin with support for various sort algorithms and delimiters.
- **thethethe.nvim** - Autocorrects common typos and misspellings as you type (like "teh" to "the").
- **stringbreaker.nvim** - Edit escaped strings in code with intuitive commands, making it easier to work with quoted text.

### Formatting & Linting

- **conform.nvim** - Lightweight yet powerful formatter plugin with support for multiple formatters per filetype and asynchronous formatting capabilities.
- **mason-conform.nvim** - Bridges mason.nvim and conform.nvim for automatic formatter installation and configuration.
- **nvim-lint** - Asynchronous linter plugin complementing LSP with support for external linting tools.
- **none-ls.nvim** - Null-ls replacement using Neovim's LSP infrastructure for diagnostics, formatting, and code actions from external tools.
- **cspell.nvim** - Companion plugin for none-ls.nvim adding cspell diagnostics and code actions for spell checking in code.
- **guess-indent.nvim** - Automatically detects and sets indentation style (tabs vs spaces, width) for the current buffer.
- **tabs-vs-spaces.nvim** - Hints and fixes deviating indentation, helping maintain consistent spacing style.
- **smartcolumn.nvim** - Dynamically shows colorcolumn at the appropriate position based on buffer content.

### Testing & Debugging

- **neotest** - Framework for running tests with support for multiple test adapters and frameworks.
- **neotest-jest** - Jest adapter for neotest providing JavaScript/TypeScript test execution.
- **neotest-rspec** - RSpec adapter for neotest for running Ruby tests.
- **nvim-dap** - Debug Adapter Protocol client for Neovim enabling debugging support for various languages.
- **nvim-dap-ui** - User interface for nvim-dap providing a complete debugging experience with variables, watches, and call stack views.
- **nvim-dap-virtual-text** - Shows variable values as virtual text during debugging sessions using Treesitter.
- **nvim-dap-ruby** - Ruby debugging configurations for nvim-dap using debug.rb.
- **mason-nvim-dap.nvim** - Bridges mason.nvim and nvim-dap for automatic debug adapter installation.
- **one-small-step-for-vimkind** - Debug adapter for Neovim Lua allowing debugging of Lua code including plugins.
- **nvim-coverage** - Displays test coverage information in the sign column with support for multiple coverage formats.
- **debugprint.nvim** - Quickly insert debug print statements with variable inspection, supporting multiple languages and customizable formats.
- **nvim-chainsaw** - Create log statements and debugging expressions quickly with language-aware templates.
- **overseer.nvim** - Task runner and job management plugin with templates, components, and strategies for running tasks.

### Language-Specific Tools

#### TypeScript/JavaScript

- **typescript-tools.nvim** - TypeScript integration providing fast LSP setup and TypeScript-specific features.
- **typecheck.nvim** - TypeScript type checking integration showing errors and running tsc in the background.
- **ts-error-translator.nvim** - Translates TypeScript errors into plain English explanations for better understanding.

#### Rust

- **rustaceanvim** - Rust development tools providing enhanced LSP configuration, debugging, and cargo integration for Rust.

#### Ruby

- **nvim-dap-ruby** - Ruby debugging configurations for nvim-dap using debug.rb.

#### JSON/YAML

- **jsonfly.nvim** - Navigate and manipulate JSON structures with Treesitter-powered motions and text objects.
- **jq.nvim** - Run jq and variants (yq, gojq) interactively on the current buffer with real-time preview.
- **jq-playground.nvim** - Interactive jq playground window for testing jq queries on JSON data with live results.
- **nvim-jqx** - Populates the quickfix list with JSON entries for easy navigation and manipulation.

#### Markdown

- **markview.nvim** - Renders Markdown with beautiful formatting including headings, code blocks, tables, and inline elements directly in Neovim.
- **render-markdown.nvim** - Renders Markdown with beautiful inline formatting including headings, code blocks, and lists.
- **peek.nvim** - Markdown preview plugin with live updates, synchronized scrolling, and GitHub-style rendering.
- **markdown-toc** - Generates and updates table of contents for Markdown files automatically based on headings.
- **markdown-togglecheck** - Toggles checkboxes in Markdown task lists with simple keybindings.
- **toc.nvim** - Navigate Markdown headings in the current buffer using a Telescope picker.
- **md-pdf.nvim** - Converts Markdown files to PDF with customizable styling and pandoc integration.

### Visual Enhancements

- **nvim-colorizer.lua** - High-performance color highlighter showing color previews for hex, rgb, and named colors.
- **nvim-highlight-colors** - Highlights color codes with their actual colors, supporting multiple color formats and languages.
- **color-picker.nvim** - Interactive color picker supporting RGB, HSL, and HEX formats with visual selection and modification capabilities.
- **rainbow-delimiters.nvim** - Highlights matching delimiters (brackets, parentheses) with alternating colors for better code structure visibility.
- **vim-illuminate** - Automatically highlights other uses of the word under cursor using LSP, Treesitter, or regex.
- **stcursorword** - Highlights the word under cursor with minimal performance impact using Lua implementation.
- **highlight-undo.nvim** - Highlights changed text after undo/redo and other buffer modifications for better visual feedback.
- **hlargs.nvim** - Asynchronously highlights function arguments' definitions and usages using Treesitter with support for unused argument detection.
- **mini.indentscope** - Visualizes and operates on indent scope with animated scope indicators.
- **visual-whitespace.nvim** - Displays whitespace characters only in visual mode, similar to VSCode's renderWhitespace setting.

### Utilities & Productivity

- **better-escape.nvim** - Maps key sequences like 'jk' or 'jj' to escape insert mode without the typical delay, using a smart detection algorithm that avoids the timeout issues of traditional mappings.
- **before.nvim** - Tracks edit locations across buffers and allows jumping back to previous edit positions, functioning like Neovim's changelist but working across multiple files.
- **bookmarks.nvim** - Bookmark management plugin with global file storage that displays different icons based on annotation keywords and integrates with Telescope for searching.
- **buffer-reopen.nvim** - Allows reopening recently closed buffers with keybindings, similar to browser tab restoration functionality.
- **cloak.nvim** - Overlays characters over sensitive patterns in files like environment variables, hiding secrets while editing and disabling completion for those buffers.
- **hardtime.nvim** - Helps break bad Vim habits by discouraging repeated key presses and encouraging more efficient motions.
- **precognition.nvim** - Shows available motions and hints for the current cursor position to assist with learning Vim movements.
- **toggleterm.nvim** - Manages multiple terminal windows with floating, vertical, and horizontal layouts.
- **numb.nvim** - Peek at line numbers when using jump commands like :123 showing context before committing to the jump.
- **nvim-window-picker** - Visually select windows using hints for quick window navigation and operations.
- **winshift.nvim** - Rearrange windows with ease using visual mode-like selection and movement.
- **focus.nvim** - Automatically resize windows to focus on the active buffer with smart split management and layout persistence.
- **neogen** - Annotation and documentation generator supporting multiple languages and documentation formats.
- **todo-comments.nvim** - Highlights and searches for TODO, HACK, BUG, and other comment annotations.
- **jot.lua** - Quick note-taking plugin that creates a project-specific note file for capturing ideas and temporary information.
- **coop.nvim** - Straightforward asynchronous workflow management for Neovim, providing utilities for running tasks concurrently.
- **faster.nvim** - Optimizes Neovim performance by selectively disabling features for large files, based on file size or line count thresholds.

### Undo/Redo & History

- **undotree** - Visualizes the undo tree in a side panel for easy navigation of edit history.
- **time-machine.nvim** - Interactive timeline for undo/redo with diff previews, bookmarks, and time travel visualization.
- **nvim-fundo** - Makes Neovim's undo files stable and useful by managing undo file lifecycle.

### Quickfix & Lists

- **nvim-bqf** - Better quickfix window with preview, filter, and enhanced navigation capabilities.
- **nvim-pqf** - Makes quickfix and location lists prettier with custom formatting and syntax highlighting.
- **qf.nvim** - Automatically opens quickfix and location lists with improved management and filtering.
- **quicker.nvim** - Improved UI and workflow for the quickfix list with filtering, preview, and enhanced keybindings.

### Search & Replace

- **grug-far.nvim** - Find and replace plugin with a visual interface inspired by the "grug brain" philosophy of simplicity.
- **nvim-rip-substitute** - Search and replace using ripgrep with live preview and regex support.

### Terminal Integration

- **kitty-scrollback.nvim** - Navigate and search kitty terminal scrollback buffer using Neovim's powerful search and movement capabilities.

### HTTP/REST Clients

- **kulala.nvim** - HTTP client for Neovim supporting REST API testing with request files and environment management.
- **curl.nvim** - Execute and manage curl requests directly from Neovim with an intuitive interface for API testing and development.

### Screenshots & Sharing

- **nvim-silicon** - Creates beautiful code screenshots using the silicon tool with customizable themes and settings.
- **paperplanes.nvim** - Share code snippets to various paste services directly from Neovim buffers.

### Miscellaneous

- **gx.nvim** - Enhanced gx command for opening URLs and file paths under cursor with support for multiple protocols and handlers.
- **urlview.nvim** - Finds and displays URLs from various sources (buffer, quickfix, etc.) for easy opening.
- **nredir.nvim** - Redirects and captures Vim command output into a buffer for easier viewing and manipulation.
- **vim-startuptime** - Views startup event timing information to profile and optimize Neovim's load time.
- **plugin-addict.nvim** - Tracks and displays statistics about your plugin usage and installation habits.
- **decipher.nvim** - Encode and decode text using various codecs like base64, providing quick text transformation utilities.
- **PDFview** - View and navigate PDF documents directly within Neovim.
- **nui.nvim** - UI component library providing the building blocks for creating popups, splits, and input fields.
- **nui-components.nvim** - Component library built on top of nui.nvim for creating complex UI interfaces.
- **sqlite.lua** - SQLite/LuaJIT binding and opinionated wrapper for storing and retrieving data.
- **friendly-snippets** - Community-driven collection of snippets for various programming languages compatible with multiple snippet engines.
- **stopinsert.nvim** - Automatically stops insert mode when certain events occur for better modal editing workflow.
- **codeium.nvim** - Free AI-powered code completion plugin offering intelligent suggestions and chat functionality for enhanced coding productivity.
- **sidekick.nvim** - AI sidekick integrating Copilot LSP's edit suggestions with terminal for any AI CLI tool.
- **golf** - Challenge-based keystroke game for Vim that helps practice efficient key combinations and movement commands.

## Package Management

Install all Homebrew packages:

```bash
brew bundle --file=homebrew/Brewfile
```

## Development

See [AGENTS.md](AGENTS.md) for detailed guidance on working with this repository.

## License

MIT
