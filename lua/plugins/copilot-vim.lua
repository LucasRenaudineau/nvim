return {
  "github/copilot.vim",
  config = function()
    -- Disable tab for accepting suggestions
    vim.g.copilot_no_tab_map = true
    
    -- Set custom keybind for accepting suggestions (using Ctrl+y instead of Tab)
    vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    
    -- Optional: Other useful Copilot keybindings
    vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '<C-;[>', '<Plug>(copilot-previous)')
    vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-dismiss)')
  end,
}
