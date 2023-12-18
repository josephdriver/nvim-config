return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neo_tree = require('neo-tree')
    neo_tree.setup{
      filesystem = {
        filtered_items = {
          show_hidden_count = true,
          visible = true,
          hide_dotfiles = false,
 	        hide_gitignored = true,
	        hide_by_name = {
	          '.git',
	        }
        }
      }
    }

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
  end
}

