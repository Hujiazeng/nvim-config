vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = { noremap = true, silent = true }
 
-- visual模式下缩进代码
vim.keymap.set("v", "<", "<gv", opt)
vim.keymap.set("v", ">", ">gv", opt)
 

-- alt + m 打开或关闭文件浏览器
vim.keymap.set("n", "<A-q>", ":NvimTreeToggle<CR>", opt) 

-- 全局搜索
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opt) 
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opt) 
