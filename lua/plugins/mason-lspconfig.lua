return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "pyright",
      "rust_analyzer",
      "clangd",
      "asm_lsp",
      "html",
      "cssls",
    }
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    { "neovim/nvim-lspconfig", opts = {} },
  },
}
