return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_fix", "ruff_format", "ruff_organize_imports" }
        else
          return { "black" }
        end
      end,
      lua = { "stylua" },
      javascript = { "biome", "prettier", stop_after_first = true },
      typescript = { "biome", "prettier", stop_after_first = true },
      javascriptreact = { "biome", "prettier", stop_after_first = true },
      typescriptreact = { "biome", "prettier", stop_after_first = true },
      json = { "biome", "prettier", stop_after_first = true },
      css = { "prettier", stop_after_first = true },
      scss = { "prettier", stop_after_first = true },
      html = { "prettier", stop_after_first = true },
      htmldjango = { "djlint", stop_after_first = true },
      yaml = { "yamlfix", stop_after_first = true },
    },
    formatters = {
      biome = {
        require_cwd = true,
      },
      prettier = {
        require_cwd = true,
      },
      yamlfix = {
        env = {
          YAMLFIX_SEQUENCE_STYLE = "block_style",
          YAMLFIX_SECTION_WHITELINES = "1",
        },
      },
    },
  },
}
