vim.g.startify_custom_header = {
  '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
  '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
  '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
  '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
  '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝'
}

vim.g.startify_lists = {
  {['type'] = 'bookmarks', ['header'] = {'bookmarks'}}
}

local home = os.getenv('HOME')

vim.g.startify_bookmarks = {
  {['i'] = home .. '/.config/nvim/init.lua'},
  {['z'] = home .. '/.zshrc'},
  {['k'] = home .. '/.config/kitty/kitty.conf'},
  {['t'] = home .. '/dev/talk/talk.tex'},
}
