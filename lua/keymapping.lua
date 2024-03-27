
local opt = { noremap = true, silent = true }
 
-- visual模式下缩进代码
vim.keymap.set("v", "<", "<gv", opt)
vim.keymap.set("v", ">", ">gv", opt)

vim.g.mapleader = " "
vim.g.maplocalleader =  " "
 

-- alt + m 打开或关闭文件浏览器
vim.keymap.set("n", "<A-q>", ":NvimTreeToggle<CR>", opt) 

-- 全局搜索
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opt) 
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opt)

-- dap Debug运行快捷键
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", opt)  -- 设置断点
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", opt)  -- 运行
vim.keymap.set("n", "<leader>dn", ":lua require'dap'.step_over()<CR>", opt)  -- 下一个断点
vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>", opt)  -- 进入断点
vim.keymap.set("n", "<leader>du", ":lua require'dapui'.open()<CR>", opt)  -- 打开debug ui
vim.keymap.set("n", "<leader>dc", ":lua require'dapui'.close()<CR>", opt)  -- 关闭debug ui
