return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim', branch = 'master' },
  },
  build = 'make tiktoken',
  cmd = { 'CopilotChat', 'CopilotChatOpen', 'CopilotChatToggle' },
  keys = {
    { '<leader>cc', '<cmd>CopilotChatToggle<cr>', desc = 'CopilotChat - Toggle' },
    {
      '<leader>cq',
      function()
        local input = vim.fn.input 'Quick Chat: '
        if input ~= '' then require('CopilotChat').ask(input, { selection = require('CopilotChat.select').buffer }) end
      end,
      desc = 'CopilotChat - Quick chat',
    },
  },
  opts = {
    model = 'gpt-5.3-codex',
    temperature = 0.1, -- Lower = focused, higher = creative
    window = {
      layout = 'vertical', -- 'vertical', 'horizontal', 'float'
      width = 0.5, -- 50% of screen width
    },
    auto_insert_mode = true, -- Enter insert mode when opening
  },
}
