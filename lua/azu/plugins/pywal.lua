-- ~/.config/nvim/lua/azu/plugins/pywal.lua --

return {
  "AlphaTechnolog/pywal.nvim",
  name = "pywal",
  priority = 1000,  
  lazy = false,     
  config = function()
    local pywal = require("pywal")
    pywal.setup({
    })
    
    vim.cmd.colorscheme("pywal")
  end,
}
