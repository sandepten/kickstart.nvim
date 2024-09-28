return {
  'akinsho/nvim-bufferline.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  after = 'catppuccin',
  version = '*',
  opts = {
    options = {
      mode = 'tabs',
      highlights = require('catppuccin.groups.integrations.bufferline').get(),
    },
  },
}
