local M = { "williamboman/mason-lspconfig.nvim" }
local keybindings = require("keybindings")

-- LSP Keybindings
local map = vim.keymap.set
local api = vim.api
local lsp = vim.lsp.buf
local diagnostic = vim.diagnostic

map("n", keybindings.lsp_keybindings.diagnostic.open_float, diagnostic.open_float)
map("n", keybindings.lsp_keybindings.diagnostic.goto_prev, diagnostic.goto_prev)
map("n", keybindings.lsp_keybindings.diagnostic.goto_next, diagnostic.goto_next)
map("n", keybindings.lsp_keybindings.diagnostic.setloclist, diagnostic.setloclist)

api.nvim_create_autocmd("LspAttach", {
	group = api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		map("n", keybindings.lsp_keybindings.declaration, lsp.declaration, opts)
		map("n", keybindings.lsp_keybindings.definition, lsp.definition, opts)
		map("n", keybindings.lsp_keybindings.hover, lsp.hover, opts)
		map("n", keybindings.lsp_keybindings.implementation, lsp.implementation, opts)
		map("n", keybindings.lsp_keybindings.type_definition, lsp.type_definition, opts)
		map("n", keybindings.lsp_keybindings.rename, lsp.rename, opts)
		map({ "n", "v" }, keybindings.lsp_keybindings.code_action, lsp.code_action, opts)
		map("n", keybindings.lsp_keybindings.references, lsp.references, opts)
	end,
})

M.cmd = { "LspInstall", "LspUninstall" }

function M.config()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "rust_analyzer" },
	})

	require("mason-lspconfig").setup_handlers({
		function(server_name)
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("lspconfig")[server_name].setup({
				capabilities = capabilities,
			})
		end,

		["rust_analyzer"] = function() end,

		["lua_ls"] = function()
			require("lspconfig")["lua_ls"].setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim", "reload" },
						},
						workspace = {
							library = {
								vim.env.VIMRUNTIME,
								require("neodev.config").types(),
								"${3rd}/busted/library",
								"${3rd}/luassert/library",
								"${3rd}/luv/library",
							},
						},
					},
				},
			})
		end,
	})
end

M.lazy = false

M.dependencies = "mason.nvim"

return M
