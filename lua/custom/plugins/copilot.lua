return {
  'github/copilot.vim',
  event = 'InsertEnter',
  init = function()
    -- Disable default <Tab> mapping so it doesn't fight with blink.cmp.
    -- Use <C-l> (insert-mode only) to accept suggestions instead.
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
  config = function()
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = 'Copilot: Accept suggestion',
    })
    vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { desc = 'Copilot: Next suggestion' })
    vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { desc = 'Copilot: Previous suggestion' })
    vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', { desc = 'Copilot: Dismiss suggestion' })
  end,
}
