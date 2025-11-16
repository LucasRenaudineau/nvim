-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
	-- This plugin does not support lazy
		{"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false, build = ":TSUpdate"},
		opts = { ensure_installed = { "bash", "c", "css", "fish", "gdscript", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "go", "html", "http", "java", "javadoc", "javascript", "json", "latex", "lua", "luadoc", "markdown", "nix", "ocaml", "php", "python", "regex", "rust", "ron", "sql", "toml", "typescript", "typst", "yaml"}},
		},
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = {
		  enabled = true,
		  notify=false
  },
})

-- Setup of the good theme depending of the time

-- Function to switch between dark and light theme based on the time of day



local theme_changing = true  -- A flag to track whether to change the theme

function ToggleThemeBasedOnTime()
    if not theme_changing then return end  -- Skip if theme changing is disabled
    
    local hour = tonumber(os.date("%H"))
    local current_background = vim.o.background
    
    if hour >= 7 and hour <= 21 then
        if current_background ~= "light" then
            vim.o.background = "light"
            vim.cmd("colorscheme dayfox")
        end
    else
        if current_background ~= "dark" then
            vim.o.background = "dark"
            vim.cmd("colorscheme nightfox")
        end
    end
end

ToggleThemeBasedOnTime()

-- Disable theme change temporarily when pressing Enter
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        theme_changing = false  -- Prevent theme change while editing
    end,
})

-- Re-enable theme change when leaving Insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        theme_changing = true  -- Re-enable theme change after editing
    end,
})
-- This is a test and should be printed when I open nvim

-- print ("THIS IS REQUIRED")
