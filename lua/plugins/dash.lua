return {
  {
    'mrjones2014/dash.nvim',
    build = "make install",
    keys = {
      { '<leader>fD', '<cmd>Dash<CR>', desc = "Dash Search" },
      { '<leader>fd', '<cmd>DashWord<CR>', desc = "Dash Search Word" },
    }
  }
}
