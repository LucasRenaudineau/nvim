return {
  -- Using the tokyonight theme
  { "folke/tokyonight.nvim", 
    enabled = true, 
    config = function() 
      vim.cmd.colorscheme("tokyonight") 
    end
  },
  
  -- Using nightfox theme
  { "EdenEast/nightfox.nvim", 
    opts = {
      transparent = false,  -- Optional: Set transparency if needed
    }, 
    config = function()
      vim.cmd.colorscheme("nightfox")  -- Default theme (dark)
    end,
	lazy = false
  },
}
