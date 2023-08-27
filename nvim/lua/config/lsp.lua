local lsp = require "lspconfig"
local coq = require "coq"

local function init()
	--TypeScript Lsp + AutoComplete
	lsp.tsserver.setup{}
	lsp.tsserver.setup(coq.lsp_ensure_capabilities{})
	
	--Rust Lsp + AutoComplete
	local rt = require("rust-tools")

	rt.setup({
  		server = {
			standalone = false
    			on_attach = function(_, bufnr)
      			-- Hover actions
      				vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      			-- Code action groups
      			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    		end,
  		},
	})
	lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities{})

	--Start CoQ
	vim.cmd('COQnow -s')
end

return {
	init = init
}
