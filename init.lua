local plugins = require("plugins")
local keybindings = require("keybindings")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
require("set")

-- Load Plugins
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

require("lazy").setup(plugins)

-- Load KeyBindings
vim.g.mapleader = keybindings.leader

for binding, action in pairs(keybindings.normal_mode) do
	vim.keymap.set("n", binding, action)
end

for binding, action in pairs(keybindings.insert_mode) do
	vim.keymap.set("i", binding, action)
end

for binding, action in pairs(keybindings.visual_mode) do
	vim.keymap.set("v", binding, action)
end
