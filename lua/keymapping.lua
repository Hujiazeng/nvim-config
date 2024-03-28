
local opt = { noremap = true, silent = true }
 
-- visual模式下缩进代码
vim.keymap.set("v", "<", "<gv", opt)
vim.keymap.set("v", ">", ">gv", opt)

vim.g.mapleader = " "
vim.g.maplocalleader =  " "
 

-- alt + m 打开或关闭文件浏览器
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opt)

-- 全局搜索
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opt)
vim.keymap.set("n", "<C-F>", ":Telescope live_grep<CR>", opt)

-- dap Debug运行快捷键
vim.keymap.set("n", "<F1>", ":lua require'dap'.toggle_breakpoint()<CR>", opt)  -- 设置断点
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", opt)  -- 运行
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_over()<CR>", opt)  -- 下一个断点
vim.keymap.set("n", "<F3>", ":lua require'dap'.step_into()<CR>", opt)  -- 进入断点
vim.keymap.set("n", "<leader>du", ":lua require'dapui'.open()<CR>", opt)  -- 打开debug ui
vim.keymap.set("n", "<leader>dc", ":lua require'dapui'.close()<CR>", opt)  -- 关闭debug ui


-- cmp 补全
--vim.keymap.set("n", '<CR>', ":lua require'cmp'.mapping.confirm({ select = true })", opt)  -- 关闭debug ui
--mapping = cmp.mapping.preset.insert({
--    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--    ['<C-f>'] = cmp.mapping.scroll_docs(4),
--    ['<C-Space>'] = cmp.mapping.complete(),
--    ['<C-e>'] = cmp.mapping.abort(),
--    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--  }),
