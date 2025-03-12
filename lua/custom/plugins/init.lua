-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tribela/vim-transparent' },
  -- { 'gabriel-peleskei/improved-ft', opts = {
  --   use_default_mappings = true,
  --   ignore_char_case = true,
  -- } },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000, opts = {
    flavor = 'latte',
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
      -- { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      -- { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      -- { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      -- { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<m-\\>', '<cmd>TmuxNavigatePrevious<cr>' },
      { '<m-left>', '<cmd>TmuxNavigateLeft<cr>' },
      { '<m-down>', '<cmd>TmuxNavigateDown<cr>' },
      { '<m-up>', '<cmd>TmuxNavigateUp<cr>' },
      { '<m-right>', '<cmd>TmuxNavigateRight<cr>' },
    },
  },

  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    keys = {
      {
        's',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        'S',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').treesitter()
        end,
        desc = 'Flash Treesitter',
      },
      {
        'r',
        mode = 'o',
        function()
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        'R',
        mode = { 'o', 'x' },
        function()
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
      -- {
      --   '<c-s>',
      --   mode = { 'c' },
      --   function()
      --     require('flash').toggle()
      --   end,
      --   desc = 'Toggle Flash Search',
      -- },
    },
  },
  {
    'simrat39/symbols-outline.nvim',
    lazy = 'VeryLazy',
    keys = {
      {
        '<leader>tt',
        mode = { 'n', 'x', 'o' },
        '<cmd>SymbolsOutline<cr>',
        desc = 'Show Outline Symbols',
      },
    },
  },
  {
    'nvim-pack/nvim-spectre',
    lazy = 'VeryLazy',
  },
}
