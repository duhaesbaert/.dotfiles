return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for `snacks` provider.
    ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition" on the type or field.
    }

    vim.o.autoread = true

    -- Lazy-load opencode module for keymaps
    local function get_opencode()
      return require("opencode")
    end

    -- Session interaction keymaps
    vim.keymap.set({ "n", "x" }, "<leader>coa", function()
      get_opencode().ask("@this: ", { submit = true })
    end, { desc = "Ask opencode…" })

    vim.keymap.set({ "n", "x" }, "<leader>cox", function()
      get_opencode().select()
    end, { desc = "Execute opencode action…" })

    vim.keymap.set({ "n", "t" }, "<leader>cot", function()
      get_opencode().toggle()
    end, { desc = "Toggle opencode" })

    -- Operator keymaps
    vim.keymap.set({ "n", "x" }, "<leader>coo", function()
      return get_opencode().operator("@this ")
    end, { desc = "Add range to opencode", expr = true })

    vim.keymap.set("n", "<leader>cool", function()
      return get_opencode().operator("@this ") .. "_"
    end, { desc = "Add line to opencode", expr = true })

    -- Scroll keymaps
    vim.keymap.set("n", "<leader>cou", function()
      get_opencode().command("session.half.page.up")
    end, { desc = "Scroll opencode up" })

    vim.keymap.set("n", "<leader>cod", function()
      get_opencode().command("session.half.page.down")
    end, { desc = "Scroll opencode down" })
  end,
}
