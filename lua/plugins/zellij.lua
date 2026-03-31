return {
  "swaits/zellij-nav.nvim",
  lazy = true,
  event = "VeryLazy",
  keys = {
    {
      "<c-h>",
      function()
        require("zellij-nav").left()
      end,
      { silent = true, desc = "navigate left or tab" },
    },
    {
      "<c-j>",
      function()
        require("zellij-nav").down()
      end,
      { silent = true, desc = "navigate down" },
    },
    {
      "<c-k>",
      function()
        require("zellij-nav").up()
      end,
      { silent = true, desc = "navigate up" },
    },
    {
      "<c-l>",
      function()
        require("zellij-nav").right()
      end,
      { silent = true, desc = "navigate right or tab" },
    },
  },
  opts = {},
}
