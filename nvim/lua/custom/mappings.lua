local M = {}
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local keymap = vim.keymap

-- for laptop convenience
keymap.set("i", "ff", "<esc>")
-- select all
keymap.set("n", "<c-a>", "gg<s-v>G")
-- navigation in window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sl", "<C-w>l")

-- resize the window
keymap.set("n", "<C-left>", "<C-w><")
keymap.set("n", "<C-right>", "<C-w>>")
keymap.set("n", "<C-up>", "<C-w>+")
keymap.set("n", "<C-down>", "<C-w>-")
-- Set key mappings for saving and quitting files
keymap.set("n", "<leader>s", ":wq<CR>")
keymap.set("n", "<leader>k", ":q!<CR>")
-- In order to disable a default keymap, use
M.disabled = {
  n = {
      ["<leader>h"] = "",
      ["<C-a>"] = ""
  }
}

-- Your custom mappings
M.abc = {
  -- n = {
  --    ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
  --    ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"} 
  -- },

  -- i = {
  --    ["ff"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  --   -- ...
  -- }
}

return M
