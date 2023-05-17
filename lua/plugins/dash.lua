return {
  {
    'mrjones2014/dash.nvim',
    build = "make install",
    keys = {
      { '<leader>fd', '<cmd>Dash', desc = "Dash Search" },
      { '<leader>fD', '<cmd>DashWord<CR>', desc = "Dash Search Word" },
    }
  }
}
