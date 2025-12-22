return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "vim",
      "vimdoc",
      "lua",
      "python",
      "javascript",
      "typescript",
      "html",
      "css",
      "json",
      "bash",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
