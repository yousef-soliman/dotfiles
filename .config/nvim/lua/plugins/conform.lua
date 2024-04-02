return {
  "stevearc/conform.nvim",
  opts = {
    format = {
      timeout_ms = 10000,
    },
    formatters_by_ft = {
      xml = { "xmlformat" },
      html = { "prettier" },
      htmldjango = { "djlint" },
    },

    formatters = {
      black = {
        args = { "--line-length", "80", "-" },
      },
    },
  },
}
