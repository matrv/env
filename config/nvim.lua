return {
	{
		-- remove clock
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.sections.lualine_z = {}
		end,
	},
	-- Catppuccin
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	-- Disable inlay hints
	{
		"nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
	-- Disable tabs
	{
		"bufferline.nvim",
		enabled = false,
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = { section_separators = "", component_separators = "" },
		},
	},
	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				enabled = false,
			},
			explorer = {
				replace_netrw = true,
			},
			picker = {
				sources = {
					explorer = {
						auto_close = true,
						layout = "vertical",
					},
				},
			},
		},
	},
	-- Undo tree
	"mbbill/undotree",
	{
		"dmmulroy/tsc.nvim",
		lazy = true,
		cmd = {
			"TSC",
		},
		opts = {
			use_trouble_qflist = true,
		},
	},
	{
		"saghen/blink.cmp",
		opts = {
			keymap = {
				preset = "super-tab",
			},
		},
	},

	{ import = "lazyvim.plugins.extras.ai.sidekick" },
	{ import = "lazyvim.plugins.extras.ai.supermaven" },
	{ import = "lazyvim.plugins.extras.coding.yanky" },
	{ import = "lazyvim.plugins.extras.lang.json" },
	{ import = "lazyvim.plugins.extras.lang.tailwind" },
	{ import = "lazyvim.plugins.extras.lang.tailwind" },
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"typos-lsp",
			},
		},
	},
}
