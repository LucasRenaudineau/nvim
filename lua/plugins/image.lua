return
{
  "3rd/image.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  -- Load when opening image-related filetypes (optional)
  ft = { "markdown", "norg", "vimwiki" },

  config = function()
    require("image").setup({
      backend = "kitty",  -- or "ueberzug", "none"

      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true,
        },
        neorg = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true,
        },
      },

      editor_only_render_when_focused = true,
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = 50,
      max_height_window_percentage = 50,

      kitty_method = "normal", -- or "overlay"
      kitty_dir = "/tmp/kitty_images",
    })
  end,
}
