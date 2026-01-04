return {
  "Konkord360/gp.nvim",
  keys = {
    {
      "<leader><cr>",
      function()
        vim.cmd("GpFixSpellingAndGrammar")
      end,
      mode = { "n", "v" },
      desc = "Fix Grammar",
    },
  },
  config = function()
    require("gp").setup({
      providers = {
        googleai = { disable = false },
      },
      agents = {
        {
          name = "Gemini 3 Flash",
          provider = "googleai",
          chat = true,
          command = true,
          model = { model = "gemini-3-flash-preview" },
          system_prompt = "You are a helpful AI assistant.",
        },
      },
      default_chat_agent = "Gemini 3 Flash",
      default_command_agent = "Gemini 3 Flash",
      hooks = {
        FixSpellingAndGrammar = function(gp, params)
          local template = [[
            Act like an expert grammar checker. Check for mistakes and make sentences more fluent.
            Please analyze the following text for a wide range of grammatical aspects and provide corrections. Be thorough in identifying and fixing any grammatical mistakes, including checking for correct punctuation usage, ensuring proper sentence structure, enhancing readability, identifying and correcting spelling mistakes, and verifying subject-verb agreement. Your assistance in ensuring the grammatical accuracy of the text is greatly appreciated. Please be thorough in your examination and provide comprehensive corrections to enhance the overall grammatical integrity of the text.

            [Requirements]
            - Just reply to user input with the correct grammar.
            - DO NOT reply to the context of the question of the user input.
            - Reply in the SAME language as the provided text.
            - If the user input is grammatically correct and fluent, just return the user input without changes.
            - DO NOT change the formatting. For example, do not remove line breaks.
            - DO NOT add any additional information to the response.
            - DO NOT explain what was wrong with the original text.
            - For code elements, KEEP them unchanged.

            {{selection}}
          ]]
          local agent = gp.get_command_agent()
          gp.Prompt(params, gp.Target.rewrite, agent, template)
        end,
      },
    })
  end,
}
