return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.yamlfix,
        null_ls.builtins.diagnostics.erb_lint,
			},
		})
		-- Leader GF is to format the layout of the file.
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
-- After installing the Formatter in Mason you need to add a line like null_ls.builtins.formatting.______
-- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#formatting for reference of what formatters work
