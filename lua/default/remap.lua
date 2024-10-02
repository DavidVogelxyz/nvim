vim.g.mapleader = " "

-- leader remaps
vim.keymap.set("n", "<leader><CR>", function() vim.cmd("so") end) -- lets you SHOUTOUT a file real easy
vim.keymap.set("n", "<leader><leader>", ":w<CR>", { noremap = true, silent = true }) -- map "leader+leader" to save current file in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- map "leader+pv" to open Ex
vim.keymap.set("n", "<leader>s", [[:%s//gc<Left><Left><Left>]]) -- map replace all to "leader+s"
vim.keymap.set("n", "S", [[:%s//gc<Left><Left><Left>]]) -- map replace all to "S"

-- clipboard remaps
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- second greatest remap ever : asbjornHaland
vim.keymap.set("x", "<leader>p", [["_dP]]) -- use leader+p to paste without losing the paste buffer -- greatest remap ever
vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { noremap = true, silent = true }) -- map leader+y to copy to system clipboard in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- second greatest remap ever : asbjornHaland

-- movement remaps
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- the cursor stays at 'zz' when using ctrl+d
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- the cursor stays at 'zz' when using ctrl+u
vim.keymap.set("n", "G", "Gzz") -- the cursor stays at 'zz' when using G
vim.keymap.set("n", "J", "mzJ`z") -- using J keeps your cursor where it was
vim.keymap.set("n", "N", "Nzzzv") -- the cursor stays at 'zz' when using reverse search
vim.keymap.set("n", "n", "nzzzv") -- the cursor stays at 'zz' when using forward search
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move highlighted text down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move highlighted text up
