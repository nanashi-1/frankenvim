local M = { "williamboman/mason.nvim" }

M.opts = {}

M.cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" }

function M.build()
	pcall(function()
		require("mason-registry").refresh()
	end)
end

M.lazy = false

return M
