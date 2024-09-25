local telescope = require("telescope.builtin")

-- Live Grep options
vim.api.nvim_set_keymap(
  "n",
  "<Leader>F",
  '<cmd>lua require("telescope.builtin").live_grep()<CR>',
  { noremap = true, silent = true, desc = "Grep (Root Dir)" }
)

-- GitBlame options
-- More actions here: https://github.com/f-person/git-blame.nvim?tab=readme-ov-file#commands
vim.api.nvim_set_keymap(
  "n",
  "<Leader>go",
  "<cmd>GitBlameOpenCommitURL<CR>",
  { noremap = true, silent = true, desc = "Open GitBlame URL" }
)

-- Copilot Chat options
-- More actions here: https://github.com/CopilotC-Nvim/CopilotChat.nvim
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
