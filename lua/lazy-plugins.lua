-- [[ Configure and install plugins ]]
require("lazy").setup({

  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  require "plugins.autopairs",

  require "plugins.neo-tree",

  require "plugins.gitsigns",

  require "plugins.which-key",

  require "plugins.telescope",

  require "plugins.lspconfig",

  require "plugins.conform",

  require "plugins.cmp",

  require "plugins.transparent-nvim",

  require "plugins.todo-comments",

  require "plugins.mini",

  require "plugins.treesitter",

  require "plugins.catppuccinn",

  require "plugins.user",

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
