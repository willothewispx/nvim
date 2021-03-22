local home = os.getenv('HOME')

vim.g.vimwiki_list = {
  {['path'] = home .. '/vimwiki/', ['syntax'] = 'markdown', ['ext'] = '.md', ['auto_diary_index'] = 1}
}
