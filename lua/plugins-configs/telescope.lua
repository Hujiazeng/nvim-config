local status, obj = pcall(require, "telescope")
if not status then
	vim.notify("没有找到 telescope 搜索文件插件")
	return
end
 
obj.setup({

defaults = {
    layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.7 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
    -- other defaults configuration here
  },
  -- other configuration values here

})