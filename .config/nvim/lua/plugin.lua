-- Plugin configuration

-- Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Lazy plugins
require("lazy").setup({
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
})

-- Gruvbox theme options
-- Setup must be called before loading the colorscheme
require("gruvbox-options")

-- Set the theme
vim.cmd("colorscheme gruvbox")

-- Treesitter setup
require("treesitter-setup")

-- Remaps that use plugin functionality
require("pluginremap")
