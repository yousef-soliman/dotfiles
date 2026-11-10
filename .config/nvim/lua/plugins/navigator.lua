return {
  "smart-splits-nvim/smart-splits.nvim",
  version = "^3.0.0",
  dependencies = {
    {
      "adriankarlen/smart-splits-backend-herdr",
      main = "smart-splits-backend-herdr",
      opts = {}, -- see Options
    },
  },
  opts = {
    mux = { backend = "smart-splits-backend-herdr" },
  },
}
