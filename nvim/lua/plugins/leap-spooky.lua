return {
  "ggandor/leap-spooky.nvim",
  config = function()
    require("leap-spooky").setup({
      affixes = {
        -- The cursor moves to the targeted object, and stays there.
        magnetic = { window = "m" },
        -- The operation is executed seemingly remotely (the cursor boomerangs back afterwards).
        remote = { window = "r" },
      },
    })
  end,
}
