return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.tsserver.setup({
      on_attach = function(client, bufnr)
        -- Disable inlay hints by default
        client.server_capabilities.inlayHintProvider = false
      end,
    })
  end,
}
