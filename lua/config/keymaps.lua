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
map("n", "<D-v>", "+p", opts)
map("v", "<C-c>", '"+y', opts)

-- Resize window using <ctrl> arrow keys
local ss = require("smart-splits")
map(nvt, "<C-Up>", ss.resize_up, { desc = "Increase window height" })
map(nvt, "<C-Down>", ss.resize_down, { desc = "Decrease window height" })
map(nvt, "<C-Left>", ss.resize_left, { desc = "Decrease window width" })
map(nvt, "<C-Right>", ss.resize_right, { desc = "Increase window width" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  local map = vim.keymap.set
  map("t", "<esc>", [[<C-\><C-n>]], opts)
  map("t", "jk", [[<C-\><C-n>]], opts)
  map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
