-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "terraform",
      "json",
      "yaml",
      "bash",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
