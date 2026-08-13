return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_lsp = {
          cmd = { "kotlin-lsp", "--stdio" },
          filetypes = { "kotlin" },
          single_file_support = false,
          root_markers = {
            "settings.gradle",
            "settings.gradle.kts",
            "pom.xml",
            "build.gradle",
            "build.gradle.kts",
            "workspace.json",
          },
        },
      },
      setup = {
        -- Prevent LazyVim/mason from trying to install a different Kotlin server
        -- and ensure our binary-based server is the one that gets enabled.
        kotlin_lsp = function(_, opts)
          vim.lsp.config("kotlin_lsp", opts)
          vim.lsp.enable("kotlin_lsp")
          return true
        end,
      },
    },
  },
}
