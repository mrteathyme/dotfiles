local function init()
	vim.g.floaterm_shell = "nu"
	vim.g.floaterm_keymap_toggle = '<Leader>t'
end

return {
	init = init
}
