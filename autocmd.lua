-- Stop automatic newline continuation of comments
vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*" }, command = "setlocal formatoptions-=cro" }
)

vim.api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*" }, command = "set formatoptions-=cro" }
)
