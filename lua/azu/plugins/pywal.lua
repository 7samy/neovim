-- ~/.config/nvim/lua/azu/plugins/pywal.lua --

return {
  "AlphaTechnolog/pywal.nvim",
  name = "pywal",
  priority = 1000,
  lazy = false,
  config = function()
    local pywal = require("pywal")
    pywal.setup()
    vim.cmd.colorscheme("pywal")

    -- SIGNAL HANDLER: Lauscht auf SIGUSR1
    local signal = vim.loop.new_signal()
    vim.loop.signal_start(signal, "sigusr1", function()
      -- schedule sorgt dafür, dass der Befehl im Main-Thread von Neovim läuft
      vim.schedule(function()
        pywal.setup()
        vim.cmd.colorscheme("pywal")
        -- Optional: Benachrichtigung in Neovim
        -- vim.notify("Colors updated!", vim.log.levels.INFO)
      end)
    end)
  end,
}
