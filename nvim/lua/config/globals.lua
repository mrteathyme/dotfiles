local function init()
	vim.wo.relativenumber = true
	vim.wo.number = true
	vim.api.nvim_set_hl(0, 'LineNr', { fg = yourcolor} )
	vim.wo.colorcolumn = "80,120"
end                                                                           

return {
	init = init
}
