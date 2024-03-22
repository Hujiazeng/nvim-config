local status, obj = pcall(require, "dashboard")
if not status then
    vim.notify("没有找到 dashboard启动界面")
  return
end

obj.setup({
  theme = "doom",
config = {
        header ={
   "",
   "",
    '          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
    "",
    "",

        },
     
    center  = {
      {
        icon = ' ',
        desc = 'gameserver',
        key = 'q',
        action = 'edit D://game/gameserver'
      },
      {
        icon = ' ',
        desc = 'cross gameserver',
        key = 'w',
        action = 'edit D://game/cross_game/cross_gameserver'
      },
      {
        icon = ' ',
        desc = 'Recent Files',
        key = 'f',
        action = 'browse oldfiles'
      },
      {
        icon = ' ',
        desc = 'Edit Config',
        key = 'c',
        key_hl = 'Number',
        action = 'edit $MYVIMRC'
      },
  },  
 

}
})