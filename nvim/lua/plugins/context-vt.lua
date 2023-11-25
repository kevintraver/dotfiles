return {
  "andersevenrud/nvim_context_vt",
  config = true,
  keys = {
    {
      "<leader>uv",
      function()
        local Util = require("lazyvim.util")
        local context_vt = require("nvim_context_vt")
        context_vt.toggle_context()
        if Util.inject.get_upvalue(context_vt.toggle_context, "enabled") then
          Util.info("Enabled Virtual Text Context", { title = "Option" })
        else
          Util.warn("Disabled Virtual Text Context", { title = "Option" })
        end
      end,
      desc = "Toggle Virtual Text Context",
    },
  },
}
