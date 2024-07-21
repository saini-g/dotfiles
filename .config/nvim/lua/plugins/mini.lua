return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })

		require("mini.move").setup()

		require("mini.surround").setup()
	end,
}
