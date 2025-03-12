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
        commands = {
          diff_with_current = function(state)
            local node = state.tree:get_node()
            if not node or not node.path then
              print 'no file selected!'
              return
            end
            local current_file = vim.fn.expand '%'
            if current_file == '' then
              print 'no current file in buffer'
              return
            end

            vim.cmd 'Neotree close'
            vim.cmd('vert split' .. vim.fn.fnameescape(node.path))
            vim.cmd 'windo diffthis'
          end,
        },
        hijack_netrw_behavior = 'open_current',
        use_libuv_file_watcher = true,
        scan_mode = 'shallow',
        window = {
          line_numbers = true,
          position = 'float',
          mappings = {
            ['\\'] = 'close_window',
            ['D'] = 'diff_with_current',
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
