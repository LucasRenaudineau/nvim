return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  build = "make tiktoken",
  opts = {
    chat = {
      loading_text = "Loading assistant...",
      welcome_message = "Welcome to Copilot Chat! How can I help you today?"
    },
    chat_layout = {
      position = "bottom",
      relative = "editor",
      size = {
        height = 25,
        width = 80,
      },
    },
    keymaps = {
      accept = "<C-y>",
      close = "<C-n>",
      scroll_down = "<C-d>",
      scroll_up = "<C-u>",
      toggle = "<C-c>",
    },
    ui_select = {
      enabled = true,
      telescope = true,
      fzf_lua = false,
      mini_pick = false,
    },
  },
}
