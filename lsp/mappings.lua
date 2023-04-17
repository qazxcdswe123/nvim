return {
  n = {
    ["K"] = false,
    ["<leader>k"] = {
      function() vim.lsp.buf.hover() end,
      desc = "Hover symbol details",
    }
  }
} 
