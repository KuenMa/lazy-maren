return {
  {
    "rmagatti/goto-preview",
    dependencies = { "rmagatti/logger.nvim" },
    event = "BufEnter",
    --config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    keys = function()
      return {
        {
          "<leader>gpd",
          "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
          desc = "Preview Definition",
        },
        {
          "<leader>gpi",
          "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
          desc = "Preview Implementation",
        },
        { "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", desc = "Close All Preview Windows" },
        {
          "<leader>gpr",
          "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
          desc = "Preview References",
        },
        {
          "<leader>gpt",
          "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
          desc = "Preview Type Definition",
        },
      }
    end,
    config = true,
  },
}
