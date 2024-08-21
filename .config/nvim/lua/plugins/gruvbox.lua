return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    require('gruvbox').setup({
      overrides = {
        NoiceCmdlinePopupBorderCmdline = { bg = '#282828' },
        NoiceCmdlineIconCmdline = { bg = '#282828' },
        NoiceCmdlinePopupBorderHelp = { bg = '#282828' },
        NoiceCmdlineIconHelp = { bg = '#282828' },
        NoiceCmdlinePopupBorderLua = { bg = '#282828' },
        NoiceCmdlineIconLua = { bg = '#282828' },
      },
    })
    vim.cmd.colorscheme('gruvbox')
  end,
}
