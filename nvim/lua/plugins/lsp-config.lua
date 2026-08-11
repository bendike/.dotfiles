return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        tsserver = {
          settings = {
            typescript = {
              preferences = {
                -- Disable alias preservation
                useAliasesForRenames = false,
              },
            },
            javascript = {
              preferences = {
                useAliasesForRenames = false,
              },
            },
          },
        },
      },
    },
  },
}
