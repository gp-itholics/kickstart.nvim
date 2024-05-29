-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tribela/vim-transparent' },
  { 'gabriel-peleskei/improved-ft', opts = {
    use_default_mappings = true,
    ignore_char_case = true,
  } },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },

      { '<c-left>', '<cmd>TmuxNavigateLeft<cr>' },
      { '<c-down>', '<cmd>TmuxNavigateDown<cr>' },
      { '<c-up>', '<cmd>TmuxNavigateUp<cr>' },
      { '<c-right>', '<cmd>TmuxNavigateRight<cr>' },
    },
  },
}
