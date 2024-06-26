-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local nv = { "n", "v" }
local nvt = { "n", "v", "t" }
-- local keymap = vim.keymap.set

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map(nv, "J", "5j", opts)
map(nv, "K", "5k", opts)

-- Neovide
vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
vim.keymap.set('v', '<D-c>', '"+y') -- Copy
vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})


map("n", "gh", vim.lsp.buf.hover, { desc = "Show hover" })

-- smart-splits
local ss = require("smart-splits")
-- Resize window using <ctrl> arrow keys
map(nvt, "<C-Up>", ss.resize_up, { desc = "Increase window height" })
map(nvt, "<C-Down>", ss.resize_down, { desc = "Decrease window height" })
map(nvt, "<C-Left>", ss.resize_left, { desc = "Decrease window width" })
map(nvt, "<C-Right>", ss.resize_right, { desc = "Increase window width" })
-- moving between splits
map(nvt, "<C-H>", ss.move_cursor_left, { desc = "Move cursor left split" })
map(nvt, "<C-j>", ss.move_cursor_down, { desc = "Move cursor down split" })
map(nvt, "<C-k>", ss.move_cursor_up, { desc = "Move cursor up split" })
map(nvt, "<C-l>", ss.move_cursor_right, { desc = "Move cursor right split" })

-- nvim-spider
map(nv, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
map(nv, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
map(nv, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
map(nv, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

-- split window
map("n", "<leader>wh", "<cmd>wincmd H<CR>", { desc = "Horizontal to Vertical" })
map("n", "<leader>wj", "<cmd>wincmd J<CR>", { desc = "Vertical to Horizontal" })

-- system clipboard using <leader>cc
map(nvt, "<leader>cc", '"+y', { desc = "Copy to clipboard" })

map("t", "<esc><esc>", [[<C-\><C-o>:ToggleTerm<CR>]], { noremap = true })

-- map <leader>qq to :q<CR>
map("n", "<leader>qq", ":q<CR>", { desc = "Close window" })
-- map <leader>qQ to :qa<CR>
map("n", "<leader>qQ", ":qa<CR>", { desc = "Close all window" })

