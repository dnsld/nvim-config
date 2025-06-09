return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    -- You can set your default provider here, e.g., "gemini" or "bedrock"
    provider = "gemini",
    providers = {
      -- Your existing Gemini configuration
      gemini = {
        endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
        model = "gemini-2.5-pro-preview-05-06",
        extra_request_body = {
          generationConfig = {
            temperature = 0.75,
          },
        },
      },
      -- New Amazon Bedrock configuration
      bedrock = {
        -- Example model. You can change this to any supported Bedrock model.
        model = "anthropic.claude-3-7-sonnet-20250219-v1:0",
        -- You MUST specify your AWS region
        aws_region = "us-east-1", -- Change this to your desired AWS region
        -- Optional: specify an AWS profile if you don't want to use the default
        aws_profile = "bedrock-dev",
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 8192,
        },
      },
    },
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
