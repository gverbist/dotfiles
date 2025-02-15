return {

  "vimwiki/vimwiki",
  lazy = false,
  event = "BufEnter *.md",
  keys = {"<leader>ww", "<leader>wt"},
  init = function()
      vim.g.vimwiki_folding = ""
      vim.g.vimwiki_list = {
            {
                 path = "~/vimwiki/",
                syntax = "markdown",
                ext = ".md",
            }
            }

        end,
}
