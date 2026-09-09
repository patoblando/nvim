local wk = require("which-key")
wk.add({
-- Buffers --
	{ "<leader>b", group = "Buffers" },
	{ "<leader>bd", desc = "Delete active buffer" },
	{ "<leader>bD", desc = "Force delete active buffer" },
	{ "<leader>bn", desc = "Create new empty buffer" },
	{ "<leader>s", group = "Split" },
	{ "<leader>sv", desc = "Vertical split" },
-- f - telescope --
	{ "<leader>f", group = "Telescope" },
-- Misc --
	{ "<leader>w", desc = "Write file" },
	{ "<leader>e", desc = "Toggle file explorer" },
})
