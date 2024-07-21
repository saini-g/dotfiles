vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.inccommand = "split"

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.hlsearch = true

vim.opt.wildignore = "*/.next/*"

-- keymaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- vim.keymap.set('n', '<Esc><Esc>', ':tabnew | term<CR>', { desc = 'Open terminal mode' })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- vim.keymap.set({ "n", "v" }, "mj", ":m +1<CR>", { desc = "Move line down" })
-- vim.keymap.set({ "n", "v" }, "mk", ":m -2<CR>", { desc = "Move line up" })

-- remaps
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down and center view" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up and center view" })

vim.keymap.set({ "n", "v" }, "n", "nzzzv", { desc = "next search result and center view" })
vim.keymap.set({ "n", "v" }, "N", "Nzzzv", { desc = "previous search result and center view" })

-- autocommands
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.api.nvim_create_autocmd('TermEnter', {
--   desc = 'Enter insert mode upon opening terminal emulator',
--   group = vim.api.nvim_create_augroup('kickstart-term-insert', { clear = true }),
--   callback = function()
--     vim.cmd("startinsert")
--   end
-- })
