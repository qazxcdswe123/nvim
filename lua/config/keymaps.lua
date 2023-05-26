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
map("n", "<D-v>", "+p", opts)
map("v", "<C-c>", '"+y', opts)

-- Resize window using <ctrl> arrow keys
local ss = require("smart-splits")
map(nvt, "<C-Up>", ss.resize_up, { desc = "Increase window height" })
map(nvt, "<C-Down>", ss.resize_down, { desc = "Decrease window height" })
map(nvt, "<C-Left>", ss.resize_left, { desc = "Decrease window width" })
map(nvt, "<C-Right>", ss.resize_right, { desc = "Increase window width" })
-- moving between splits
map(nvt, "<C-h>", require("smart-splits").move_cursor_left)
map(nvt, "<C-j>", require("smart-splits").move_cursor_down)
map(nvt, "<C-k>", require("smart-splits").move_cursor_up)
map(nvt, "<C-l>", require("smart-splits").move_cursor_right)

-- nvim-spider
map(nv, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
map(nv, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
map(nv, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
map(nv, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

-- split window 
map("n", "<leader>wh", "<cmd>wincmd H<CR>", { desc = "Horizontal to Vertical" })
map("n", "<leader>wj", "<cmd>wincmd J<CR>", { desc = "Vertical to Horizontal" })
