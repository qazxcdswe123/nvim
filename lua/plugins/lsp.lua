return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
      },
      autoformat = false,
      diagnostics = {
        virtual_text = {
          spacing = 2,
        },
      },

      servers = {
        racket_langserver = {
          cmd = { "racket", "--lib", "racket-langserver", "--", "--stdio" },
          filetypes = { "racket", "scheme" },
        }
      }
    },
  },
}
