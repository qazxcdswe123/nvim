return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      -- add a keymap
      keys[#keys + 1] = { "<leader>k", vim.lsp.buf.hover, desc = "Hover" }
    end,
    opts = {
      virtual_text = {
        spacing = 2,
      },
      autoformat = false,
    },
  },
}
