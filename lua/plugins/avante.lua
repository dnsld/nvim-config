return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "gemini", -- Set Gemini as the provider
    gemini = {
      -- You'll need to specify the Gemini model you want to use.
      -- "gemini-1.5-pro-latest" is a good general-purpose option.
      -- Check the avante.nvim or Google AI documentation for available model names.
      -- model = "gemini-1.5-pro-latest",
      model = "gemini-2.5-pro-preview-05-06",
      -- You might be able to set other options here, similar to OpenAI or Claude,
      -- such as temperature, max_tokens, etc.
      -- Example (refer to avante.nvim documentation for exact Gemini options):
      -- temperature = 0.7,
      -- max_tokens = 4096,
      -- timeout = 30000, -- In milliseconds
    },
    -- Ensure other provider configurations like 'openai' or 'claude' are removed or commented out
    -- if you previously had them, to avoid confusion.
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-tree/nvim-web-devicons",
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
