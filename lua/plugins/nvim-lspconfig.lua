return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Setup optional config overrides before enabling servers

    -- Example: Override rust-analyzer settings (optional)
    -- vim.lsp.config('rust_analyzer', {
    --   settings = {
    --     ['rust-analyzer'] = {
    --       cargo = { allFeatures = true },
    --     },
    --   },
    -- })

    -- Enable servers
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('pyright')
	vim.lsp.enable('rust_analyzer')
    vim.lsp.enable('clangd')
    vim.lsp.enable('html')
    vim.lsp.enable('cssls')
	vim.lsp.enable('asm_lsp')
  end,
}
