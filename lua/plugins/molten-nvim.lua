return {
  "benlubas/molten-nvim",
  version = "^1.0.0",
  build = ":UpdateRemotePlugins",  -- Required for Python remote plugin
  dependencies = {
    "nvim-lua/plenary.nvim",
    "3rd/image.nvim",
  },
  config = function()
    -- Set globals
    vim.g.molten_image_provider = "image.nvim"
    vim.g.molten_output_win_max_height = 20
    vim.g.molten_auto_open_output = false

    -- Make image popups automatic
    vim.g.molten_auto_image_popup = true

    -- Do NOT require("molten") here
  end,
}
