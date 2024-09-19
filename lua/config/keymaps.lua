local telescope = require("telescope.builtin")

vim.api.nvim_set_keymap(
  "n",
  "<Leader>F",
  '<cmd>lua require("telescope.builtin").live_grep()<CR>',
  { noremap = true, silent = true, desc = "Grep (Root Dir)" }
)

vim.api.nvim_set_keymap(
  "n",
  "gr",
  ":lua vim.lsp.buf.references({ include_declaration = false })<CR>",
  { noremap = true, silent = true }
)
