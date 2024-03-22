local status, obj = pcall(require, "telescope")
if not status then
	vim.notify("没有找到 telescope 搜索文件插件")
	return
end
 
obj.setup({

defaults = {
    layout_config = {
      vertical = { width = 0.1 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here

})