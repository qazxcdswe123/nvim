return {
  {
    "neovim/nvim-lspconfig",
    -- https://www.lazyvim.org/plugins/lsp
    -- keymap start
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      -- add a keymap
      keys[#keys + 1] = { "<leader>k", vim.lsp.buf.hover, desc = "Hover" }
    end,
    -- keymap end
    opts = {
      inlay_hints = {
        enabled = true,
      },
      diagnostics = {
        virtual_text = {
          spacing = 2,
        },
      },

      servers = {
        racket_langserver = {
          cmd = { "racket", "--lib", "racket-langserver", "--", "--stdio" },
          filetypes = { "racket", "scheme" },
        },
        rust_analyzer = {
          keys = {
            { "<leader>k", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
          },
        },
      },
    },
  },
}
