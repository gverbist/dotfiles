return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  -- Config part of the plugin
  config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
}
