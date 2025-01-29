-- Quality of Life Plugin. This enalbes a lot of nice addons
-- First enable the plugin in Opts --> check website for This
-- Then map a key to that plugin function
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
---@diagnostic disable-next-line: undefined-doc-name
  ---@type snacks.Config
  opts = {
    notifier = { enabled = true },
    lazygit = { enabled = true },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
  }
}
