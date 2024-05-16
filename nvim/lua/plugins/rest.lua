return {
  "rest-nvim/rest.nvim",
  lazy = true,
  ft = "http",
  name = "rest-nvim",
  config = true,
  keys = {
    {
      "<C-Enter>",
      desc = "Send HTTP Request",
    },
    {
      "<A-Enter>",
      desc = "Send HTTP Request",
    },
    {
      "<leader>or",
      function()
        local root_dir = LazyVim.root.git()
        local requests_folder = root_dir .. "/.requests"
        local requests_file = root_dir .. "/.requests.http"
        if vim.fn.isdirectory(requests_folder) == 1 then
          vim.cmd.edit(requests_folder)
        else
          if vim.fn.filereadable(requests_file) == 0 then
            local file = io.open(requests_file, "w")
            if file then
              file:write("GET http://localhost:3000")
              file:close()
            end
          end
          vim.cmd.edit(requests_file)
        end
      end,
      desc = "Open/Edit HTTP Request",
    },
  },
}
