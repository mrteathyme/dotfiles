local function init()
	require("catppuccin").setup({
		custom_highlights = {
			LineNr = { fg = "white" },
		},
	})

	vim.cmd.colorscheme "catppuccin"
end

return {
	init = init
}
