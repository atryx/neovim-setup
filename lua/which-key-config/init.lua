local wk = require("which-key")
local mappings = {
	q = {":q<cr>", "Quit"},
	Q = {":wq<cr>", "Save & Quit"},
	w = {":w<cr>", "Save"},
	x = {":bdelete<cr>", "Close"},

}
local opts = {
	prefix =  '<leader>'
}
wk.register(mappings, opts)
