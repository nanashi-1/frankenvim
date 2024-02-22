local M = { "nvim-telescope/telescope.nvim" }

function M.config()
	require("telescope").setup()
end

M.dependencies = { "telescope-fzf-native.nvim" }

M.lazy = true

M.cmd = "Telescope"

return M
