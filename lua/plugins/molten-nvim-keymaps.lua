return {
  "benlubas/molten-nvim",
  keys = {
    { "<localleader>mi", "<cmd>MoltenInit<CR>",               desc = "Initialize the plugin" },
    { "<localleader>e",  "<cmd>MoltenEvaluateOperator<CR>",  desc = "Run operator selection" },
    { "<localleader>rr", "<cmd>MoltenReevaluateCell<CR>",    desc = "Re-evaluate cell" },
    { "<localleader>r",  ":<C-u>MoltenEvaluateVisual<CR>gv", mode = "v", desc = "Evaluate visual selection" },
    -- Select current # %% cell and evaluate
    {
      "<localleader>c",
      function()
        local current_line = vim.fn.line(".")
        
        -- Find the start of the cell (search backwards for # %%)
        local start = vim.fn.search("^# %%", "bnW")
        -- If no cell marker found before cursor, start from line 1
        -- Otherwise start from the line after the marker
        if start == 0 then 
          start = 1 
        else
          start = start + 1
        end
        
        -- Find the end of the cell (search forward for next # %%)
        vim.api.nvim_win_set_cursor(0, {current_line, 0})
        local stop = vim.fn.search("^# %%", "nW")
        -- If no next cell marker found, go to end of file
        -- Otherwise stop at the line before the next marker
        if stop == 0 then 
          stop = vim.fn.line("$") 
        else 
          stop = stop - 1 
        end
        
        -- Select the range
        vim.api.nvim_win_set_cursor(0, {start, 0})
        vim.cmd("normal! V")
        vim.api.nvim_win_set_cursor(0, {stop, 0})
        
        -- Execute the command using feedkeys to simulate typing in visual mode
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":<C-u>MoltenEvaluateVisual<CR>", true, false, true), 'n', false)
      end,
      desc = "Evaluate current # %% cell",
    },
  }
}
