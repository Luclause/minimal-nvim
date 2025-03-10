return {
  {
    "goolord/alpha-nvim",
    config = function() require("alpha").setup(require("alpha.themes.dashboard").config) end,
  },
  -- Better escape by pressing `jj` in INSERT mode
  { "max397574/better-escape.nvim", enabled = true },
}
