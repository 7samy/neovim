-- ~/.config/nvim/lua/azu/plugins/flash.lua --

return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  -- stylua: ignore
  keys = {
    { "sl",    mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
  },
}
