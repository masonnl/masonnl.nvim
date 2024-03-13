return {
  -- Don't show useless messages
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      -- provide a border
      opts.presets.lsp_doc_border = true
    end,
  },
}
