-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folnvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		require('plugins.barbar'), -- Buffer 'line' (tabs)
		require('plugins.lualine'), -- Status  line
		require('plugins.nvim-tree'), -- file explorer
		require('plugins.schemastore'), --
		require('plugins.snacks-dashboard'), -- snack's plugins dashboard (when you open nvim)
		require('plugins.telescope'), -- searcher
		require('plugins.treesitter'), -- better syntax and autoindent
		require('plugins.ui'), -- transparent background (creo)
		require('plugins.which-key'), -- keybinds popup
		require('plugins.nvim-lint'), -- very simple async linter
		require('plugins.nvim-autopairs'), -- autopairs
	},
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


