return{
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
 t},
  filters = {
    dotfiles = true,
  },
})
local keymap = vim.keymap

keymap.set("n","<leader>rt", "<cmd>NvimTreeToggle<CR>")
keymap.set("n","<leader>rf", "<cmd>NvimTreeFindFileToggle<CR>")
keymap.set("n","<leader>rc", "<cmd>NvimTreeCollapse<CR>")
keymap.set("n","<leader>rr", "<cmd>NvimTreeRefresh<CR>")
end
}
