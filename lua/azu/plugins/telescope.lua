-- ~/.config/nvim/lua/azu/plugins/telescope.lua --

return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      local builtin = require('telescope.builtin')
      local actions = require('telescope.actions')

      -- Hier definierst du die "Defaults"
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
            n = {
              ["j"] = actions.move_selection_next,
              ["k"] = actions.move_selection_previous,
            },
          },
        },
      })

      -- FZF Erweiterung laden (für schnellere Suche)
      pcall(require('telescope').load_extension, 'fzf')

      -- Deine Keymaps
      vim.keymap.set("n", "<space>f", builtin.find_files, { desc = "Find files" })


      vim.keymap.set("n", "<space>fh", function()
        builtin.find_files({ cwd = '~/.config/hypr/modules/' })
      end, { desc = "Find files in Programming" })


      vim.keymap.set("n", "<space>fp", function()
        builtin.find_files({ cwd = '~/Documents/Programming/' })
      end, { desc = "Find files in Programming" })


      vim.keymap.set("n", "<space>fs", function()
        builtin.find_files({ cwd = '~/.config/hypr/scripts/' })
      end, { desc = "Find files in Programming" })


      vim.keymap.set("n", "<space>ff", function()
        builtin.find_files({ cwd = '~/.config/quickshell/' })
      end, { desc = "Find files in Quickshell" })


      vim.keymap.set("n", "<space>fc", function()
        builtin.find_files({ cwd = '~/.config' })
      end, { desc = "Find files in Config (General)" })


      vim.keymap.set("n", "<space>F", function()
        builtin.find_files({ cwd = vim.fn.expand('%:p:h') })
      end, { desc = "Find files in current file's directory" })


      vim.keymap.set("n", "<space>fn", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end, { desc = "Find files in Neovim Config" })
    end
  }
}
