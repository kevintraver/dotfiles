return {
  "arminveres/md-pdf.nvim",
  lazy = true,
  ft = "markdown",
  opts = {
    toc = false,
  },
  keys = {
    {
      "<leader>mP",
      function()
        require("md-pdf").convert_md_to_pdf()
      end,
      desc = "Markdown PDF",
      ft = "markdown",
    },
  },
}
