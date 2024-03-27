local status, obj = pcall(require, "notify")
if not status then
	vim.notify("没有找到 notify 弹窗提示插件")
	return
end
 
obj.setup({
    stages = "fade" 
})