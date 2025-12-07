# Global Claude Instructions

## Markdown Rendering

- When rendering markdown files on the CLI, use `glow` (Charm CLI tool)
- Command pattern: `glow <file>.md`
- Options: `-s dark` for dark theme, `-w <width>` for width control

## Screenshots & Terminal Output

- When creating CLI/terminal screenshots, use `freeze` (Charm CLI tool)
- Command pattern: `<command> | freeze -o <output>.png`
- Example: `glow file.md | freeze -o screenshot.png`

## Code Generation Guidelines

- Never use dynamic imports (e.g., `await import(...)`) unless explicitly requested
- Never cast to `any` type
- Do not add extra defensive checks or try/catch blocks
