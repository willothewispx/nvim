-- astronauta.nvim
local k = require('astronauta.keymap')
local nnoremap = k.nnoremap

-- ESC
vim.api.nvim_set_keymap('i', '<C-c>', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-Space>', '<C-\\><C-n>', {noremap = true})

-- Copy/paste to/from clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-p>', '"+p', {noremap = true})

-- Telescope
local t = require('telescope.builtin')

nnoremap{'<leader><space>', t.find_files, {silent = true}}
nnoremap{'<leader>b', t.buffers, {silent = true}}
nnoremap{'<leader>ps', t.live_grep, {silent = true}}
vim.api.nvim_set_keymap('n', '<leader>pw', ':lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })<CR>', {noremap = true, silent = true})
nnoremap{'<leader>ph', t.help_tags, {silent = true}}

-- Harpoon
nnoremap{'<leader>m', require('harpoon.mark').add_file, {}}
nnoremap{'<C-e>', require('harpoon.ui').toggle_quick_menu, {}}

nnoremap{'<C-h>', function() require('harpoon.ui').nav_file(1) end, {}}
nnoremap{'<C-t>', function() require('harpoon.ui').nav_file(2) end, {}}
nnoremap{'<C-n>', function() require('harpoon.ui').nav_file(3) end, {}}
nnoremap{'<C-s>', function() require('harpoon.ui').nav_file(4) end, {}}

nnoremap{'<leader>tu', function() require('harpoon.term').gotoTerminal(1) end, {}}
nnoremap{'<leader>te', function() require('harpoon.term').gotoTerminal(2) end, {}}

-- Nvim-compe
vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm("<CR>")', {noremap = true, silent = true, expr = true})

-- Neogit
nnoremap{'<leader>gs', require('neogit').open, {silent = true}}

-- Snippets.nvim
vim.cmd("inoremap <c-j> <cmd>lua return require'snippets'.expand_or_advance(1)<CR>")
-- inoremap{'<C-j>', require'snippets'.expand_or_advance(1), {}}
-- inoremap{'<C-k>', require'snippets'.advance_snippet(-1), {}}

-- Ultisnips
vim.g.UltiSnipsExpandTrigger = '<C-CR>'
vim.g.UltiSnipsJumpForwardTrigger = '<C-b>'
vim.g.UltiSnipsJumpBackwardTrigger = '<C-z>'

-- Filetree
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Hop.nvim
nnoremap{'<leader>hw', require'hop'.hint_words, {}}
nnoremap{'<leader>hl', require'hop'.hint_lines, {}}
nnoremap{'<leader>hc', require'hop'.hint_char1, {}}
nnoremap{'<leader>hp', require'hop'.hint_patterns, {}}

-- Kommentary
vim.api.nvim_set_keymap('n', 'gcc', '<Plug>kommentary_line_default', {})
vim.api.nvim_set_keymap('v', 'gcc', '<Plug>kommentary_visual_default', {})
vim.api.nvim_set_keymap('n', 'gc', '<Plug>kommentary_motion_default', {})

-- Undotree
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', {noremap = true})

