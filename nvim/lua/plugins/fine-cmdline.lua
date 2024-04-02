return {
  "VonHeikemen/fine-cmdline.nvim",
  enabled = false,
  config = function()
    require("fine-cmdline").setup({
      cmdline = {
        prompt = " > ",
      },
      hooks = {
        after_mount = function(input)
          vim.keymap.set(
            "i",
            "<Esc>",
            "<cmd>stopinsert<cr>",
            { buffer = input.bufnr }
          )
        end,
      },
    })
  end,
}
