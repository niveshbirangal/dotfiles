-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", "<cmd>:nohl<CR>", { desc = "Clear search highlights" })

-- increment / decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window managment
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>ss", "<C-w>x", { desc = "swap windows" }) -- swap windows

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- shortcuts
-- keymap.set("i", "clog", "console.log()")
-- keymap.set("i", "CL", "console.log()<ESC>j", { desc = "console.log shortcut" })

-- source lua file
keymap.set("n", "<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>", { desc = "source init.lua" }) -- source init.lua

-- yank without loosing orignal one
keymap.set("v", "leader<p>", "_dP")

-- experimental
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- select text and move down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- select text and move up

-- save
keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "save current file" }) -- save current file
