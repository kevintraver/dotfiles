return {
  "basola21/PDFview",
  lazy = true,
  keys = {
    {
      "<leader>P",
      function()
        require("pdfview").open()
      end,
      desc = "Open PDF View",
    },
    {
      "<C-n>",
      ft = { "pdfview" },
      function()
        require("pdfview.renderer").next_page()
      end,
      desc = "PDFview: Next page",
    },
    {
      "<C-p>",
      ft = { "pdfview" },
      function()
        require("pdfview.renderer").previous_page()
      end,
      desc = "PDFview: Previous page",
    },
  },
}
