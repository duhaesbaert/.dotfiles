return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = opts.servers or {}

    opts.servers.jdtls = {
      on_attach = function(client, bufnr)
        client.handlers["window/showMessage"] = function() end
      end,
    }
  end,
}
