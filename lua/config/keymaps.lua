-- Live Grep options
local telescope = require("telescope.builtin")

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

-- DAP options
local dap = require("dap")

vim.api.nvim_set_keymap("n", "<Leader>d", "", { noremap = true, silent = true, desc = "Debugger" })

vim.api.nvim_set_keymap("n", "<Leader>ds", "", { noremap = true, silent = true, desc = "Debugger Commands" })

vim.api.nvim_set_keymap(
  "n",
  "<Leader>dsb",
  '<cmd>lua require("dap").toggle_breakpoint()<CR>',
  { noremap = true, silent = true, desc = "Toggle Breakpoint" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>dsc",
  '<cmd>lua require("dap").continue()<CR>',
  { noremap = true, silent = true, desc = "Continue" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>dsu",
  '<cmd>lua require("dap").step_over()<CR>',
  { noremap = true, silent = true, desc = "Continue" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>dsi",
  '<cmd>lua require("dap").step_into()<CR>',
  { noremap = true, silent = true, desc = "Continue" }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>dso",
  '<cmd>lua require("dap").step_out()<CR>',
  { noremap = true, silent = true, desc = "Continue" }
)
