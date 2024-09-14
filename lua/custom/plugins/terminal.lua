return {
  'akinsho/toggleterm.nvim',
  version = '*', -- optional: to lock a specific version
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<C-\>]],
      shade_terminals = true,
      direction = 'float', -- can be 'vertical' | 'horizontal' | 'tab' | 'float'
      float_opts = {
        border = 'curved', -- other options: 'double', 'single', 'shadow'
      },
    }

    local Terminal = require('toggleterm.terminal').Terminal

    -- Escape terminal mode
    vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-N>', { noremap = true, silent = true })

    -- New horizontal terminal
    vim.api.nvim_set_keymap('n', '<leader>h', ':ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })

    -- New vertical terminal
    vim.api.nvim_set_keymap('n', '<leader>v', ':ToggleTerm direction=vertical<CR>', { noremap = true, silent = true })

    -- Toggleable terminals
    vim.api.nvim_set_keymap('n', '<A-v>', "<cmd>lua require'toggleterm'.toggle(1, 'vertical')<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>lua require'toggleterm'.toggle(1, 'horizontal')<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<A-i>', "<cmd>lua require'toggleterm'.toggle(1, 'float')<CR>", { noremap = true, silent = true })
  end,
}
