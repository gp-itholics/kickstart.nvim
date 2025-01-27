-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = function(_)
    vim.api.nvim_set_hl(0, 'NeoTreeNormal', { background = 'NONE' })
    return {
      enable_diagnostics = false,
      async_mode = true,
      filesystem = {
        hijack_netrw_behavior = 'open_current',
        use_libuv_file_watcher = true,
        scan_mode = 'shallow',
        window = {
          position = 'float',
          mappings = {
            ['\\'] = 'close_window',
          },
          popup = {
            size = {
              height = '99%',
              width = '99%',
            },
            position = '50%',
            border = 'rounded',
            win_options = {
              winblend = 100,
            },
          },
        },
      },
      event_handlers = {
        {
          event = 'file_open_requested',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
