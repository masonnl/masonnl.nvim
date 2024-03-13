return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous tab" },
    },
    opts = {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
      },
    },
  },
}
