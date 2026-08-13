-- gungnir: LSP-driven code-structure inspector.
-- Developed locally at $REPO/github.com/duhaesbaert/gungnir.nvim. Using `dir`
-- points lazy at the working copy; swap to "duhaesbaert/gungnir.nvim" once
-- published to install from GitHub. `keys`/`cmd` give lazy-loading triggers.
return {
  dir = vim.fn.expand("$REPO/github.com/duhaesbaert/gungnir.nvim"),
  name = "gungnir.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "folke/trouble.nvim",
  },
  cmd = "Gungnir",
  keys = {
    { "<leader>gu", "", desc = "+gungnir" },
    {
      "<leader>guo",
      function()
        require("gungnir").structure()
      end,
      desc = "Structure outline (file)",
    },
    {
      "<leader>guw",
      function()
        require("gungnir").workspace()
      end,
      desc = "Workspace symbols (package)",
    },
    {
      "<leader>gut",
      function()
        require("gungnir").tests()
      end,
      desc = "Test functions",
    },
    {
      "<leader>gui",
      function()
        require("gungnir").incoming_calls()
      end,
      desc = "Incoming calls (callers)",
    },
    {
      "<leader>guc",
      function()
        require("gungnir").outgoing_calls()
      end,
      desc = "Outgoing calls (callees)",
    },
    {
      "<leader>gur",
      function()
        require("gungnir").references()
      end,
      desc = "References (trouble)",
    },
    {
      "<leader>gup",
      function()
        require("gungnir").outline_panel()
      end,
      desc = "Toggle outline panel (trouble)",
    },
  },
  config = function()
    require("gungnir").setup()

    -- Discoverable which-key group label (which-key v3 API).
    local ok, wk = pcall(require, "which-key")
    if ok and wk.add then
      wk.add({ { "<leader>gu", group = "gungnir" } })
    end
  end,
}
