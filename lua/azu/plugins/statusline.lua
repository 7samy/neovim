-- ~/.config/nvim/lua/azu/plugins/lualine.lua


return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        globalstatus = false, -- Deaktivieren, damit Lualine nicht ständig status=3 erzwingt
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })

    -- Der "Holzhammer" am Ende der Plugin-Konfiguration
    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted", -- Wartet bis wirklich ALLES bereit ist
      callback = function()
        vim.opt.laststatus = 0
        vim.opt.cmdheight = 0
      end,
    })
  end,
}
