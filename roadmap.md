# Roadmap

- Enable the Lua module loader cache for faster startup by calling `vim.loader.enable()` in `init.lua`.

    init.lua (Neovim 0.9+), which noticeably reduces startup time.

1. Lazy‑load more plugins: in lua/config/lazy.lua set defaults = { lazy = true }, then add event/cmd/ft triggers per plugin (Telescope, Treesitter, Render‑Markdown, Lualine).
1. Disable unused built‑in plugins: add a performance = { rtp = { disabled_plugins = { ... } } } block in lazy.nvim to skip runtime plugins you never use (netrw excluded since you rely on it).
1. Reduce Treesitter scope: keep only the parsers you actually use in
    ensure_installed (each parser adds install/update and runtime work).
  - Tame Telescope search cost: your config uses rg --no-ignore --hidden --files;
    drop --no-ignore or --hidden if you don’t need them to speed up large repos.
  - Profile startup to target the real bottleneck: nvim --headless --startuptime /
    tmp/nvim.log +qall then inspect the slowest entries.
