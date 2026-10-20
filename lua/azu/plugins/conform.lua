-- ~/.config/nvim/lua/azu/plugins/conform.lua --


return {
{
    "stevearc/conform.nvim",
    event = "BufWritePre", -- Wird vor dem Speichern geladen
    opts = {
        formatters_by_ft = {
            qml = { "qmlformat" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
  }
}
