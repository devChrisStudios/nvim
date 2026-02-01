
vim.g.mapleader = " "

-- Explorer Menu
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Quality of Life
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<leader>w", ":w<CR>") -- Write
vim.keymap.set("n", "<leader>q", ":q<CR>") -- Quit
vim.keymap.set("n", "<leader>x", ":x<CR>") -- Quit

vim.keymap.set("n", "<leader>t", ":vert term<CR>") -- New Terminal Split

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- Yank
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p') -- Paste
vim.keymap.set({'n', 'v'}, '<leader>d', '"_d') -- Delete Without Yank
vim.keymap.set("n", "<leader>j", "yyp") -- Paste Down

vim.keymap.set("n", "<leader>o", ":put =''<CR>") -- Add Line Below
vim.keymap.set("n", "<leader>O", ":put! =''<CR>") -- Add Line Above

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- Substitute Current Word
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true }) -- Make File Executable

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pc", function() builtin.find_files({ cwd = vim.fn.stdpath("config")}) end, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)

-- UndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Fugitive
vim.keymap.set("n", "<leader>gs", ":Git<CR>") -- Git Status 
vim.keymap.set("n", "<leader>gw", ":Git add --all<CR>") -- Stage File
vim.keymap.set("n", "<leader>Gw", ":Gw ") -- Stage File (with filename)
vim.keymap.set("n", "<leader>gc", ":Git commit -m ''<Left>") -- Git Commit
vim.keymap.set("n", "<leader>gp", ":Git push<CR>") -- Git Push

