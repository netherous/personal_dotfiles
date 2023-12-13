local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
	lsp.buffer_autoformat()
end)

-- lsp.format_mapping('gq', {
-- 	format_opts = {
-- 		async = true,
-- 		timeout_ms = 10000,
-- 	},
-- 	servers = {
-- 		['lua_ls'] = { 'lua' },
-- 		['rust_analyzer'] = { 'rust' },
-- 	}
-- })
lsp.setup()
lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = 'local',
	sign_icons = {
		-- error = '✘',
		-- warn = '▲',
		-- hint = '⚑',
		-- info = ''
	}
})
lsp.ensure_installed({
	'lua_ls',
	'clangd',
	'eslint',
	'rust_analyzer'
})

lsp.setup()
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = false,
	severity_sort = false,
	float = true,
})

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		-- ["<CR>"] = cmp.mapping({
		-- 	i = function (fallback)
		-- 		if cmp.visible() and cmp.get_active_entry() then
		-- 			cmp.confirm({behavior = cmp.ConfirmBehavior.Replace, select=false})
		-- 		else
		-- 			fallback()
		-- 		end
		-- 	end,
		-- 	s = cmp.mapping.confirm({select=true}),
		-- 	c= cmp.mapping.confirm({behavior=cmp.ConfirmBehavior.Replace, select=true}),
		-- }),
	}
})
