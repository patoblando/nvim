-- AUTOCOMMANDS (EVENT HANDLERS)
-- See `:h lua-guide-autocommands`, `:h autocmd`, `:h nvim_create_autocmd()`
-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
local function createGroup(name) return vim.api.nvim_create_augroup(name, { clear = true }) end

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('VimEnter', {
	group = createGroup('nvim_schemastore_aupdate'),
	callback = function() require('lazy').update({ plugins = { 'schemastore.nvim' }, show = false }) end,
})
vim.api.nvim_create_autocmd('BufWritePost', {
	callback = function()
		-- try_lint without arguments runs the linters defined in `linters_by_ft`
    	-- for the current filetype, on write
		require('lint').try_lint()
	end,
})
vim.api.nvim_create_autocmd('CmdlineLeave', {
	pattern = {'/', '?'},
	callback = function()
		vim.defer_fn(function() vim.cmd("noh") end, 3000)
	end
})
