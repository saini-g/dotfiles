return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"  ██  ████████  ██",
			"  ████████████████",
			"  ██████████████████",
			"  ████  ████  ██████████",
			"  ████████████████████████",
			"  ██████    ██████████████████",
			"  ██  ██  ████  ████████████████████████████",
			"  ████        ██████████████████████",
			"  ██████████████████████████████████",
			"  ██████████████████████████████████",
			"  ██████████████████████████████████",
			"  ████████████████████████████████",
			"    ██████████████████████████████",
			"    ████   ████        ████   ████",
			"    ████   ████        ████   ████",
			"    ██     ██          ██     ██",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "     New File", ":ene <BAR> startinsert<CR>"),
			dashboard.button("p", "     Find Files", ":Telescope find_files<CR>"),
			dashboard.button("f", "󱎸     Search Word", ":Telescope live_grep<CR>"),
			dashboard.button("g", "     Git Status", ":Git<CR>"),
			dashboard.button("l", "󰒲     Lazy", ":Lazy<CR>"),
			dashboard.button("q", "󰤆     Quit", ":qa<CR>"),
		}

		local version = vim.version()
		local version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch

		dashboard.section.footer.val = {
			"",
			"",
			"- N E O V I M (" .. version_info .. ") -",
		}

		alpha.setup(dashboard.opts)
	end,
}
