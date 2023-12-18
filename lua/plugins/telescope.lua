return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup{
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
          }
        }
      }
    }

    telescope.load_extension("fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {desc = "Find recent files"})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find files in working directory"})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Find grep in working directory"})
    vim.keymap.set('n', '<leader>fc', builtin.grep_string, {desc = "Find cursor string in working directory"})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Find help tags"})
  end
}
