return {
  "folke/zen-mode.nvim",
  config = function ()
    vim.keymap.set('n', '<leader>z', ':ZenMode<cr>', { silent = true })
  end
}
