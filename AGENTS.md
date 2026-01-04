# Repository Guidelines

This repository is a personal Neovim configuration written in Lua and managed with `lazy.nvim`. Use the guidance below when contributing or making changes.

## Project Structure & Module Organization
- `init.lua` is the entry point that loads the rest of the configuration.
- `lua/config/` contains core setup such as options, keymaps, and lazy.nvim bootstrap (`lazy.lua`, `options.lua`, `remaps.lua`).
- `lua/plugins/` holds individual plugin specs; each file returns a `lazy.nvim` plugin table.
- `after/ftplugin/markdown.lua` contains filetype-specific tweaks for Markdown.
- `lazy-lock.json` pins plugin versions; update it when changing plugins.
- `test.py` is a small Python sample and not part of the Neovim setup.

## Build, Test, and Development Commands
Use Neovim itself to validate changes:
```bash
nvim
nvim +Lazy\ sync
nvim +checkhealth
```
- `nvim` launches Neovim with this configuration.
- `nvim +Lazy sync` installs/updates plugins and refreshes `lazy-lock.json` (run after plugin changes).
- `nvim +checkhealth` reports runtime and plugin health checks.

## Coding Style & Naming Conventions
- Lua uses spaces with a 2-space indent (`tabstop`, `shiftwidth` set in config).
- Follow the existing formatting in the file you touch; keep diffs minimal.
- Use `snake_case` for locals and descriptive names for keymaps and plugin configs.
- Plugin files should return a single table compatible with `lazy.nvim`.
- Name plugin files after their purpose (example: `telescope.lua`, `treesitter.lua`).

## Testing Guidelines
- There is no automated test suite.
- Validate by opening Neovim and checking for startup errors.
- For plugin changes, confirm `:Lazy` shows expected status and keymaps still work.

## Commit & Pull Request Guidelines
- Commit messages are short, lowercase, and action-oriented (example: `updated README and clean up`).
- PRs should include a concise summary, list of plugin or keymap changes, and note whether `lazy-lock.json` changed.
- Add screenshots or brief notes when UI/UX behavior changes (colors, statusline, Markdown rendering).

## Configuration Tips
- Keep plugin versions locked by committing `lazy-lock.json` after updates.
- Avoid adding secrets or machine-specific paths; prefer portable settings.
- `git` is required for lazy.nvim bootstrap; `rg` (ripgrep) is required for Telescope file search.
