require("config.pack").add("stevearc/conform.nvim")

require("conform").setup({
	notify_on_error = false,
	format_on_save = function(bufnr)
		local enabled_filetypes = {
			go = true,
			javascript = true,
			javascriptreact = true,
			rust = true,
			typescript = true,
			typescriptreact = true,
		}
		if enabled_filetypes[vim.bo[bufnr].filetype] then
			return { timeout_ms = 500 }
		end
	end,
	default_format_opts = {
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		go = { "goimports" },
		javascript = { "oxfmt" },
		javascriptreact = { "oxfmt" },
		rust = { "rustfmt" },
		typescript = { "oxfmt" },
		typescriptreact = { "oxfmt" },
	},
})
