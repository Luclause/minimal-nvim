return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        mappings = {
          { mode = "n", keys = "<Tab>", command = "BufferLineCycleNext" },
          { mode = "n", keys = "<S-Tab>", command = "BufferLineCyclePrev" },
        },
      },
    }
  end,
}
