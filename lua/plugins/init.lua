local plugins = {}
local small_config_plugins = require("plugins/small-config-plugins")
plugins = small_config_plugins

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins/large-config-plugins', [[v:val =~ '\.lua$']])) do
	local plugin = require('plugins/large-config-plugins/' .. file:gsub('%.lua$', ''))
	table.insert(plugins, plugin)
end

return plugins
