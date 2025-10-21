-- lazy.nvim
return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        animate = {
          duration = { step = 15, total = 100 },
          easing = "linear",
        },
        spamming = 10, -- threshold for spamming detection
        -- what buffers to animate
        filter = function(buf)
          return vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= "terminal"
        end,
      },
    },
  },
}
