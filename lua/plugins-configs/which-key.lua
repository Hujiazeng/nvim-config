local status, obj = pcall(require, "which-key")
if not status then
	vim.notify("没有找到which-key 终端提示插件")
	return
end
 
obj.setup({
icons = { group = vim.g.icons_enabled and "" or "+", separator = "" },
      disable = { filetypes = { "TelescopePrompt" } },
})