return {
	leader = " ",

	normal_mode = {
		-- Basic Controls
		["<C-w>"] = "<cmd>q<cr>",
		["<C-s>"] = "<cmd>w<cr>",

		-- Replace
		["<leader>sl"] = ":s/",
		["<leader>sa"] = ":%s/",

		-- Window Navigation
		["<C-h>"] = "<cmd>wincmd h<cr>",
		["<C-j>"] = "<cmd>wincmd j<cr>",
		["<C-k>"] = "<cmd>wincmd k<cr>",
		["<C-l>"] = "<cmd>wincmd l<cr>",

		-- Buffer Controls
		["<tab>"] = "<cmd>bn<cr>",
		["<leader>x"] = "<cmd>bd<cr><cmd>bp<cr>",
		["<leader>b"] = "<cmd>Telescope buffers<cr>",

		-- File Navigation
		["<leader>e"] = "<cmd>NvimTreeToggle<cr>",
		["<leader>f"] = "<cmd>Telescope find_files<cr>",
		["<leader>g"] = "<cmd>Telescope git_files<cr>",

		-- LazyGit
		["<leader>lg"] = "<cmd>LazyGit<cr>",

		["<leader>lf"] = vim.lsp.buf.format,

		-- Window Management
		["<C-->"] = "<cmd>split<cr>",
		["<C-\\>"] = "<cmd>vsplit<cr>",
		["<C-up>"] = "<cmd>resize +2<cr>",
		["<C-down>"] = "<cmd>resize -2<cr>",
		["<C-left>"] = "<cmd>vertical resize -2<cr>",
		["<C-right>"] = "<cmd>vertical resize +2<cr>",

		-- Codeium
		["<leader>cc"] = "<cmd>CodeiumToggle<cr>",
	},

	visual_mode = {},

	insert_mode = {},

	lsp_keybindings = {
		diagnostic = {
			open_float = "<leader>cd",
			goto_prev = "[d",
			goto_next = "]d",
			setloclist = "<leader>q",
		},

		declaration = "gD",
		definition = "gd",
		hover = "K",
		implementation = "gi",
		references = "gr",
		type_definition = "gy",
		rename = "gR",
		code_action = "ca",
	},
}
