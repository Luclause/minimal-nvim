-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic
vim.keymap.set("n", "<leader>xq", vim.diagnostic.setloclist, { desc = "Open Quickfix list" })

-- Buffer
vim.keymap.set("n", "<leader>bw", "<cmd>:w<CR>", { desc = "save buffer" })
vim.keymap.set("n", "<leader>bW", "<cmd>:wa<CR>", { desc = "save all buffers" })
vim.keymap.set("n", "<leader>bc", "<cmd>:bd<CR>", { desc = "close buffer" })
vim.keymap.set("n", "<leader>bC", "<cmd>:bd!<CR>", { desc = "force close buffer" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Centre buffer when paging up/down
vim.keymap.set({ "n", "v" }, "<PageUp>", "<PageUp>zz")
vim.keymap.set({ "n", "v" }, "<PageDown>", "<PageDown>zz")

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})

-- vim: ts=2 sts=2 sw=2 et
