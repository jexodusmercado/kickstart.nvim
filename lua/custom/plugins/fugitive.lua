---@module 'lazy'
---@type LazySpec
return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G', 'Gdiffsplit', 'Gvdiffsplit' },
  keys = {
    { '<leader>gc', '<cmd>Git commit<cr>', desc = 'Git commit' },
    { '<leader>gp', '<cmd>Git push<cr>', desc = 'Git push' },
    { '<leader>gP', '<cmd>Git pull<cr>', desc = 'Git pull' },
    { '<leader>gf', '<cmd>Git fetch<cr>', desc = 'Git fetch' },
  },
}
