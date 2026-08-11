-- lazy.nvim
return {
  -- {
  --   "robitx/gp.nvim",
  --   config = function()
  --     local conf = {
  --       providers = {
  --         openai = {
  --           endpoint = vim.env.AZURE_OPENAI_GPT5_ENDPOINT,
  --           secret = vim.env.AZURE_OPENAI_GPT5_API_KEY,
  --         },
  --       },
  --       agents = {
  --         {
  --           name = "ChatGPT5",
  --           chat = true,
  --           command = true,
  --           model = { model = "gpt-5", verbosity = "low", effort = "low" },
  --           system_prompt = "You are an experienced software developer",
  --         },
  --       },
  --       default_chat_agent = "ChatGPT5",
  --       default_command_agent = "ChatGPT5",
  --     }
  --     require("gp").setup(conf)
  --
  --     -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  --   end,
  -- },
  {
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        http = {
          azure_openai = function()
            return require("codecompanion.adapters").extend("azure_openai", {
              env = {
                api_key = "AZURE_OPENAI_GPT5_API_KEY",
                endpoint = "https://janm-memib0td-swedencentral.cognitiveservices.azure.com",
                deployment = "gpt-5.4",
              },
              schema = {
                model = {
                  default = "gpt-5.4",
                },
              },
            })
          end,
        },
      },
      interactions = {
        chat = {
          adapter = "azure_openai",
        },
        inline = {
          adapter = "azure_openai",
        },
      },
    },
  },
}
