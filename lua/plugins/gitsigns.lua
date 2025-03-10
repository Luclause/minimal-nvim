-- See `:help gitsigns` to understand what the configuration keys do
return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(bufnr)
        local gitsigns = require "gitsigns"

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map("n", "]h", function()
          if vim.wo.diff then
            vim.cmd.normal { "]c", bang = true }
          else
            gitsigns.nav_hunk "next"
          end
        end, { desc = "Jump to next git [c]hange" })

        map("n", "[h", function()
          if vim.wo.diff then
            vim.cmd.normal { "[c", bang = true }
          else
            gitsigns.nav_hunk "prev"
          end
        end, { desc = "Jump to previous git [c]hange" })

        -- Actions
        -- visual mode
        map(
          "v",
          "<leader>gs",
          function() gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" } end,
          { desc = "stage hunk" }
        )
        map(
          "v",
          "<leader>gr",
          function() gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" } end,
          { desc = "reset hunk" }
        )
        -- normal mode
        map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "stage hunk" })
        map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "reset hunk" })
        map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "Stage buffer" })
        map("n", "<leader>gu", gitsigns.stage_hunk, { desc = "undo stage hunk" })
        map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset buffer" })
        map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "preview hunk" })
        map("n", "<leader>gb", gitsigns.blame_line, { desc = "blame line" })
        map("n", "<leader>gd", gitsigns.diffthis, { desc = "diff against index" })
        map("n", "<leader>gD", function() gitsigns.diffthis "@" end, { desc = "Diff against last commit" })
        -- Toggles
        map("n", "<leader>gb", gitsigns.toggle_current_line_blame, { desc = "Toggle git show blame line" })
        map("n", "<leader>gD", gitsigns.preview_hunk_inline, { desc = "Toggle git show Deleted" })
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
