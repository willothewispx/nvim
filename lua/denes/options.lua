local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= "o" then
    scopes["o"][key] = value
  end
end

opt('w', 'number', true)
opt('w', 'relativenumber', true)

local indent = 2

opt('b', 'expandtab', true)
opt('b', 'tabstop', indent)
opt('b', 'shiftwidth', indent)
opt('b', 'softtabstop', indent)
opt('o', 'smartindent', true)
opt('o', 'shiftround', true)

opt('o', 'showmode', false)

opt('o', 'hidden', true)

opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'hlsearch', false)

opt('o', 'cursorline', true)

opt('b', 'textwidth', 80)
opt('w', 'colorcolumn', '+1')
opt('w', 'signcolumn', 'yes')

opt('w', 'breakindent', true)
opt('o', 'showbreak', string.rep(' ', 3)) -- Make it so that long lines wrap smartly
opt('w', 'linebreak', true)

opt('o', 'scrolloff', 10)

opt('o', 'inccommand', 'split')

local home = os.getenv('HOME')

opt('o', 'undodir', home .. "/.nvim/undodir")
opt('b', 'undofile', true)

opt('o', 'mouse', 'n')

opt('o', 'updatetime', 300)

opt('o', 'completeopt', 'menuone,noselect')

-- Autoset spell
vim.api.nvim_exec([[
  augroup Spell
    autocmd!
    autocmd FileType latex,tex,md,markdown setlocal spell
  augroup END
]], false)
