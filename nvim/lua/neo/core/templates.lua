local keymap = vim.keymap
-- shortcuts
-- keymap.set("i", "clog", "console.log()")
keymap.set("i", "CL", "console.log()<ESC>h", { desc = "console.log shortcut" })
keymap.set("i", "CF", "function temp(){}<ESC>h", { desc = "console.log shortcut" })
