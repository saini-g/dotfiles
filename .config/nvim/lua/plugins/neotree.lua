return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>x", ":Neotree filesystem toggle left<CR>", {})
		vim.keymap.set("n", "<leader>o", ":Neotree buffers reveal float<CR>", {})
		vim.keymap.set("n", "<leader>gs", ":Neotree git_status reveal float<CR>", {})

		require("neo-tree").setup({
			sort_function = function(a, b)
				if a.type == b.type then
					return a.path < b.path
				else
					return a.type < b.type
				end
			end,
		})
	end,
}
