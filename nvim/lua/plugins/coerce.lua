return {
  "gregorias/coerce.nvim",
  enabled = true,
  event = "VeryLazy",
  opts = function()
    local coroutine_m = require("coerce.coroutine")
    local selector_m = require("coerce.selector")
    local transformer_m = require("coerce.transformer")
    return {
      modes = {
        {
          vim_mode = "n",
          keymap_prefix = "gu",
          selector = selector_m.select_current_word,
          transformer = function(selected_region, apply)
            return coroutine_m.fire_and_forget(
              transformer_m.transform_lsp_rename_with_local_failover,
              selected_region,
              apply
            )
          end,
        },
        {
          vim_mode = "n",
          keymap_prefix = "gU",
          selector = selector_m.select_current_word,
          transformer = transformer_m.transform_local,
        },
        {
          vim_mode = "n",
          keymap_prefix = "guo",
          selector = selector_m.select_with_motion,
          transformer = transformer_m.transform_local,
        },
        {
          vim_mode = "v",
          keymap_prefix = "gu",
          selector = selector_m.select_current_visual_selection,
          transformer = transformer_m.transform_local,
        },
      },
    }
  end,
}
