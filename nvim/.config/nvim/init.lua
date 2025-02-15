-- Bists very own Neovim config



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}



--This one contains all options regarding vim
require("vim-options")
--This will allow plugins to live inside lua/plugins
require("lazy").setup("plugins")
--Keymaps can be found in this dedicated file.
require("keymaps")




