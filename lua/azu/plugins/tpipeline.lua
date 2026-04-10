-- ~/.config/nvim/lua/azu/tpipeline.lua --



return {
  "vimpostor/vim-tpipeline",
  init = function()
    -- Leert die Neovim-Statusleiste, damit sie nicht doppelt auftaucht
    vim.g.tpipeline_clearstl = 1
  end,
}
