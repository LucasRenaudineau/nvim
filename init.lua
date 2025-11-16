-- Basic configs
vim.opt.clipboard = 'unnamedplus' -- use the system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'} -- used when researching
vim.opt.expandtab = false  -- Don't replace tabs with spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.showmode = false            -- don't need the "-- INSERT --" mode hint
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Map 'Esc' to exit terminal mode in Neovim
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-N>]], { noremap = true, silent = true })

-- Use Lazy

require("config.lazy")
