return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- keys = {
	-- 	{ "L", "<cmd>BufferLineMoveNext<CR>", desc = "Next buffer" },
	-- 	{ "H", "<cmd>BufferLineMovePrev<CR>", desc = "Previous buffer" },
	-- },
	opts = {
		options = {
			mode = "buffers",
			separator_style = "slant",
			show_buffer_close_icons = false,
			show_close_icon = false,
			always_show_bufferline = true,
		},
	},
}
