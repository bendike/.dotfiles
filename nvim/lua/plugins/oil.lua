-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local dir = require("oil").get_current_dir()
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

-- opts = {
--   win_options = {
--     winbar = "%!v:lua.get_oil_winbar()",
--   },
-- },

return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    win_options = {
      winbar = "%!v:lua.get_oil_winbar()",
    },
    lsp_file_methods = {
      enabled = false,
    },
  },
  -- Optional dependencies
  -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
