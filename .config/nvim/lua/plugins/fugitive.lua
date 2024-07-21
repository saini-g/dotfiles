return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>G", ":Git<CR>")
		vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>")
	end,
}
