vim.o.termguicolors = true
vim.o.background = 'dark'

-- Gruvbox Material
vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_enable_bold = 1

vim.g.gruvbox_material_diagnostic_text_highlight = 1
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

vim.g.gruvbox_material_sign_column_background = 'default'

-- vim.cmd('colorscheme gruvbox-material')

-- Tokyonight
vim.g.tokyonight_style = "night"

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd[[colorscheme tokyonight]]
