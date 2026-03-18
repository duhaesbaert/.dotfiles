-- Telescope options
local telescope = require("telescope.builtin")

vim.api.nvim_set_keymap(
  "n",
  "<Leader>ff",
  '<cmd>lua require("telescope.builtin").find_files()<CR>',
  { noremap = true, silent = true, desc = "" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>fg",
  '<cmd>lua require("telescope.builtin").live_grep()<CR>',
  { noremap = true, silent = true, desc = "Live Grep" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>fb",
  '<cmd>lua require("telescope.builtin").buffers()<CR>',
  { noremap = true, silent = true, desc = "Grep (Root Dir)" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>fh",
  '<cmd>lua require("telescope.builtin").help_tags()<CR>',
  { noremap = true, silent = true, desc = "Grep (Root Dir)" }
)

-- GitBlame options
-- More actions here: https://github.com/f-person/git-blame.nvim?tab=readme-ov-file#commands
vim.api.nvim_set_keymap("n", "<Leader>co", "", { noremap = true, silent = true, desc = "AI Options" })

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
  "<Leader>coO",
  "<cmd>CopilotChatOpen<CR>",
  { noremap = true, silent = true, desc = "Copilot Open" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>coR",
  "<cmd>CopilotChatReset<CR>",
  { noremap = true, silent = true, desc = "Copilot Reset" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>coC",
  "<cmd>CopilotChatClose<CR>",
  { noremap = true, silent = true, desc = "Copilot Close" }
)
