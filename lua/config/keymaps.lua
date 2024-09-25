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
vim.api.nvim_set_keymap("n", "<Leader>co", "", { noremap = true, silent = true, desc = "Github Copilot" })

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
  "<Leader>coo",
  "<cmd>CopilotChatOpen<CR>",
  { noremap = true, silent = true, desc = "Copilot Open" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>cor",
  "<cmd>CopilotChatReset<CR>",
  { noremap = true, silent = true, desc = "Copilot Reset" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>coc",
  "<cmd>CopilotChatClose<CR>",
  { noremap = true, silent = true, desc = "Copilot Close" }
)
