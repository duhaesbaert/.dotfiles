local telescope = require("telescope.builtin")

vim.api.nvim_set_keymap(
  "n",
  "<Leader>F",
  '<cmd>lua require("telescope.builtin").live_grep()<CR>',
  { noremap = true, silent = true, desc = "Grep (Root Dir)" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>go",
  "<cmd>GitBlameOpenCommitURL<CR>",
  { noremap = true, silent = true, desc = "Open GitBlame URL" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>cco",
  "<cmd>CopilotChatOpen<CR>",
  { noremap = true, silent = true, desc = "Copilot Open" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>ccr",
  "<cmd>CopilotChatReset<CR>",
  { noremap = true, silent = true, desc = "Copilot Reset" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>ccc",
  "<cmd>CopilotChatClose<CR>",
  { noremap = true, silent = true, desc = "Copilot Close" }
)
