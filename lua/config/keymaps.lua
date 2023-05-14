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

-- moving between splits
map(nvt, "<C-h>", require("smart-splits").move_cursor_left)
map(nvt, "<C-j>", require("smart-splits").move_cursor_down)
map(nvt, "<C-k>", require("smart-splits").move_cursor_up)
map(nvt, "<C-l>", require("smart-splits").move_cursor_right)
