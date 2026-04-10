-- ~/.config/nvim/init.lua

-- Leaders must be set before lazy to avoid mapping issues
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable unused built-in plugins for faster startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then  -- vim.uv is preferred over vim.loop in nvim 0.10+
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Your config
require("azu.options")
require("azu.keymaps")
require("azu.autocmds")

-- Plugins
require("lazy").setup("azu.plugins", {
  change_detection = { notify = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip", "tarPlugin", "tohtml",
        "tutor", "zipPlugin",
      },
    },
  },
})

-- LSP (after lazy so rtp is fully resolved)
vim.lsp.enable({ "clangd", "lua_ls", "bashls", "html", "pyright", "rust_analyzer", "qmlls" })
