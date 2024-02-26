return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			vim.keymap.set("n", "TT", ":ToggleTerm direction=horizontal name=desktop<CR>", {}),
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {}),
			vim.keymap.set("n", "TS", ":TermSelect<CR>", {}),

			vim.keymap.set("n", "<C-T>", function()
				local current_term = require("toggleterm.terminal").get_current_terminal()
				if current_term then
					current_term:toggle()
					local new_term = require("toggleterm.terminal").Terminal:new({
						direction = "vertical", -- Ou "horizontal" se preferir
					})
					new_term:toggle()
				else
					print("Nenhum terminal aberto atualmente")
				end
			end),
		})
	end,
}
