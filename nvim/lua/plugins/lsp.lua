return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = {
      "<A-k>",
      function()
        require("telescope.builtin").lsp_definitions({
          reuse_win = true,
        })
      end,
      desc = "Goto Definition",
      has = "definition",
    }
    keys[#keys + 1] = {
      "gk",
      function()
        vim.lsp.buf.hover()
      end,
      desc = "Hover",
    }
  end,
}
