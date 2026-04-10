-- ~/.config/nvim/lua/azu/plugins/colorizer.lua --

return {
  "NvChad/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    require("colorizer").setup({
      filetypes = { "*" }, -- Läuft in allen Dateien
      user_default_options = {
        RGB = true,         -- #RGB hex codes
        RRGGBB = true,      -- #RRGGBB hex codes
        names = true,       -- "Name" colors (z.B. "blue")
        RRGGBBAA = true,    -- #RRGGBBAA hex codes
        rgb_fn = true,      -- CSS rgb() and rgba() functions
        hsl_fn = true,      -- CSS hsl() and hsla() functions
        css = true,         -- CSS-Unterstützung
        css_fn = true,      -- CSS-Funktionen
        mode = "background",-- Setzt die Hintergrundfarbe
      },
    })
  end,
}
