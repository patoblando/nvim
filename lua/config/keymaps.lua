-- See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`
-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n','<leader>fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n','<leader>fh', '<cmd>Telescope help_tags<cr>')

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

-- Buffers
vim.keymap.set({ 'n' }, '<C-h>', ':bprevious<Enter>')
vim.keymap.set({ 'n' }, '<C-l>', ':bnext<Enter>')
vim.keymap.set({ 'n' }, '<leader>bd', ':BufferClose<Enter>')
vim.keymap.set({ 'n' }, '<leader>bD', ':BufferClose!<Enter>')
vim.keymap.set({ 'n' }, '<leader>bn', ':enew<Enter>')
vim.keymap.set({ 'n' }, '<leader>sv', ':vsplit<CR>') --ver split + open next buffer

-- Misc
vim.keymap.set({ 'n' }, '<leader>w', '<cmd>wa<Enter>') -- Write all
vim.keymap.set({ 'n' }, '<leader>e', '<cmd>NvimTreeToggle<Enter>') -- Tree explorer
vim.keymap.set({ 'n' }, '<leader>qq', '<cmd>qa<Enter>') -- Quit neovim
