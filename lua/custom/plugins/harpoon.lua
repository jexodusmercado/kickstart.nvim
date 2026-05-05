return {
  'theprimeagen/harpoon',
  keys = {
    { '<leader>ha', function() require('harpoon.mark').add_file() end, desc = 'Harpoon: Add file' },
    { '<C-e>', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon: Toggle menu' },
  },
  config = function() require('harpoon').setup {} end,
}
