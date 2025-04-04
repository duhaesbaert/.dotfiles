local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "rose-pine" } },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = { dashboard = false },
})

require("copilot").setup({
  filetypes = {
    ["*"] = false,
    typescript = true,
    javascript = true,
    java = true,
    kotlin = true,
    go = true,
  },
})

require("rose-pine").setup({
  disable_background = true,
})

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- Remove background color
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = "none" })

  -- Additional highlight groups
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "none" })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "none" })
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
end

function DontIdent()
  vim.cmd([[
    command! NoAutoSave noa w
    NoAutoSave
  ]])
end

vim.cmd([[
  augroup ProjectLocalConfig
    autocmd!
    autocmd BufWriteCmd $REPOSIGINT* lua DontIdent()
  augroup END
]])

vim.cmd([[
  augroup ProjectLocalConfig
    autocmd!
    autocmd BufWriteCmd $REPOAPPTIO* lua DontIdent()
  augroup END
]])

ColorMyPencils()

vim.lsp.handlers["textDocument/inlayHint"] = function() end

local orig_notify = vim.notify
vim.notify = function(msg, level, opts)
  if msg:match("validating document") then
    return
  end
  orig_notify(msg, level, opts)
end

vim.lsp.handlers["window/showMessage"] = function() end
vim.lsp.handlers["window/progress"] = function() end
vim.lsp.handlers["$/progress"] = function() end
