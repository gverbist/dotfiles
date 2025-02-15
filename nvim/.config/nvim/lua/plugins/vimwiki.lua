return {

	"vimwiki/vimwiki",
	lazy = false,
	event = "BufEnter *.md",
	keys = { "<leader>ww", "<leader>wt" },
	init = function()
		vim.g.vimwiki_folding = ""
		vim.g.vimwiki_list = {
			{
				path = "~/vimwiki/",
				syntax = "markdown",
				ext = ".md",
			},
		}

		-- Auto-push changes in Vimwiki when saving .wiki or .md files
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = { "*.wiki", "*.md" },
			callback = function()
				local home = os.getenv("HOME") or "~" -- Get home directory dynamically
				local file_path = vim.fn.expand("%:p") -- Get full file path
				if string.match(file_path, "^" .. home .. "/vimwiki/") then
					vim.fn.jobstart({ "bash", home .. "/vimwiki/autopush.sh" }, { detach = true })
				end
			end,
		})
	end,
}
