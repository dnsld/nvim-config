# Neovim Configuration

A personalized Neovim configuration using Lua and the `lazy.nvim` plugin manager.

## Features

- **Plugin Management**: Uses `lazy.nvim` for efficient plugin management.
- **File Explorer**: `nvim-tree` provides a file explorer.
- **Fuzzy Finder**: `telescope.nvim` for finding files, buffers, and more.
- **Syntax Highlighting**: `nvim-treesitter` for improved syntax highlighting.
- **Status Line**: `lualine.nvim` for a customized status line.
- **Colorscheme**: Uses the `rasmus.nvim` colorscheme.

## Installation

1.  Clone this repository to your Neovim configuration directory:
    ```bash
    git clone https://github.com/your-username/nvim-config.git ~/.config/nvim
    ```
2.  Start Neovim. `lazy.nvim` will automatically install the plugins.

## Plugins

This configuration uses the following plugins:

-   [lazy.nvim](https://github.com/folke/lazy.nvim): A modern plugin manager for Neovim.
-   [rasmus.nvim](https://github.com/kvrohit/rasmus.nvim): A dark colorscheme.
-   [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): A status line for Neovim.
-   [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua): A file explorer.
-   [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Icons for `nvim-tree`.
-   [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): A fuzzy finder.
-   [plenary.nvim](https://github.com/nvim-lua/plenary.nvim): A utility library for Neovim plugins.
-   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): A parser generator tool and incremental parsing library.

## Configuration Structure

-   `init.lua`: The main entry point of the configuration.
-   `lua/config/`: Contains the main configuration files.
    -   `lazy.lua`: `lazy.nvim` plugin manager setup.
    -   `options.lua`: Neovim options.
    -   `remaps.lua`: Key mappings.
-   `lua/plugins/`: Contains the plugin configurations.

## Keybindings

-   `<leader>e`: Toggle the file explorer (`nvim-tree`).
