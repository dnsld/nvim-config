# Neovim Configuration

A personalized Neovim configuration using Lua and the `lazy.nvim` plugin manager.

## Features

- **Plugin Management**: Uses `lazy.nvim` for efficient plugin management.
- **File Explorer**: Uses the built-in `Netrw`.
- **Fuzzy Finder**: `telescope.nvim` for finding files, buffers, and more.
- **Syntax Highlighting**: `nvim-treesitter` for improved syntax highlighting.
- **Status Line**: `lualine.nvim` for a customized status line.
- **Colorscheme**: Uses the `black-metal` (thyrfing) colorscheme.
- **Markdown Rendering**: `render-markdown.nvim` for better Markdown viewing.
- **Markdown Wrapping**: Automatically enables text wrapping and line breaking for Markdown files.

## Installation

1.  Clone this repository to your Neovim configuration directory:
    ```bash
    git clone https://github.com/your-username/nvim-config.git ~/.config/nvim
    ```
2.  Start Neovim. `lazy.nvim` will automatically install the plugins.

## Plugins

This configuration uses the following plugins:

-   [lazy.nvim](https://github.com/folke/lazy.nvim): A modern plugin manager for Neovim.
-   [black-metal-theme-neovim](https://github.com/metalelf0/black-metal-theme-neovim): A dark colorscheme.
-   [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A status line for Neovim.
-   [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): A fuzzy finder.
-   [plenary.nvim](https://github.com/nvim-lua/plenary.nvim): A utility library for Neovim plugins.
-   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): A parser generator tool and incremental parsing library.
-   [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim): Improve Markdown rendering.

## Configuration Structure

-   `init.lua`: The main entry point of the configuration.
-   `lua/config/`: Contains the main configuration files.
    -   `lazy.lua`: `lazy.nvim` plugin manager setup.
    -   `options.lua`: Neovim options.
    -   `remaps.lua`: Key mappings.
-   `lua/plugins/`: Contains the plugin configurations.
-   `after/ftplugin/markdown.lua`: Markdown-specific settings.

## Keybindings

### General
-   `<leader>pv`: Open Netrw (File Explorer).
-   `<leader>dd`: Paste current date.
-   `<leader>oc`: Copy absolute file path to clipboard.
-   `<leader>oo`: Open current file in default system application.

### Telescope
-   `<leader>ff`: Find files.
-   `<leader>fg`: Live grep.
-   `<leader>fb`: List buffers.
-   `<leader>fh`: Help tags.