local function init()
require('crates').setup {
    src = {
        ...
        coq = {
            enabled = true,
            name = "crates.nvim",
        },
    },
}
end

return {
	init = init 
}
