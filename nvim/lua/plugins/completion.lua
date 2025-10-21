return {
  -- Use <tab> for completion and snippets (supertab)
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none",
        ["<Tab>"] = { "select_next", "show", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
    },
  },
}
