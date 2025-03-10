return {
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function() return vim.fn.executable "make" == 1 end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
      -- [[ Configure Telescope ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      }

      -- Enable Telescope extensions if they are installed
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")

      -- See `:help telescope.builtin`
      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "find help" })
      vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "find keymaps" })
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
      vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "find select Telescope" })
      vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "find current word" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "find by grep" })
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "find diagnostics" })
      vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "find resume" })
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "find recent files" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find existing buffers" })

      -- Slightly advanced example of overriding default behavior and theme
      vim.keymap.set(
        "n",
        "<leader>/",
        function()
          builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
            winblend = 10,
            previewer = false,
          })
        end,
        { desc = "find in current buffer" }
      )

      -- It's also possible to pass additional configuration options.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      vim.keymap.set(
        "n",
        "<leader>f/",
        function()
          builtin.live_grep {
            grep_open_files = true,
            prompt_title = "live grep open files",
          }
        end,
        { desc = "find in open files" }
      )

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set(
        "n",
        "<leader>fn",
        function() builtin.find_files { cwd = vim.fn.stdpath "config" } end,
        { desc = "find Neovim files" }
      )
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
