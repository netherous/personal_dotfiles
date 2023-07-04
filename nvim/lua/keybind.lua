-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
--telescope fuzzy find keybind
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {desc='find files'})
vim.keymap.set('n', '<leader>ld', builtin.oldfiles, {desc='find old files'})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {desc='live grep'})
vim.keymap.set('n', '<leader>b', builtin.buffers, {desc='search buffers'})
-- vim.keymap.set('n', '<leader>/', function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, { desc = '[/] Fuzzily search in current buffer]' })
-- vim.keymap.set('n', '<C-p>'g builtin.git_files,{})
vim.keymap.set('n', '<leader><space>', builtin.current_buffer_fuzzy_find, {desc='search in file'})

--undotree keybinds
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle, {})

--fugitive keybinds
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- nvim tree keybinds
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)

