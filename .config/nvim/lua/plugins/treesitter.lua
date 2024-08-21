return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local config = require('nvim-treesitter.configs')
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          'javascript',
          'typescript',
          'c',
          'lua',
          'vim',
          'vimdoc',
          'query',
          'java',
          'kotlin',
          'jq',
          'dockerfile',
          'json',
          'html',
          'terraform',
          'go',
          'tsx',
          'bash',
          'markdown',
          'java',
        },
      })
    end,
  },
}
