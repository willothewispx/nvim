require('lualine').setup{
	options = {
		-- theme = 'gruvbox_material',
    theme = 'tokyonight',
		section_separators = {'',''},
		component_separators = {'',''},
		icons_enabled = true,
	},
	sections = {
		lualine_a = {{'mode', upper = true}},
		lualine_b = {'branch', {'diff', color_added = '#a9b665', color_modified = '#d3869b', color_removed = '#ea6962'}},
		lualine_c = {{'filename', file_status = true}},
		lualine_x = {'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	extensions = {'fugitive'}
}
