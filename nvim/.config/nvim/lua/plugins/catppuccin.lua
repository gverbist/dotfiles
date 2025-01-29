return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  -- Config part of the plugin
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
