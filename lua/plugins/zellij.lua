return {
  "swaits/zellij-nav.nvim",
  lazy = true,
  keys = {
    {
      "<c-h>",
      function()
        require("zellij-nav").left()
      end,
      desc = "Navigate left",
    },
    {
      "<c-j>",
      function()
        require("zellij-nav").down()
      end,
      desc = "Navigate down",
    },
    {
      "<c-k>",
      function()
        require("zellij-nav").up()
      end,
      desc = "Navigate up",
    },
    {
      "<c-l>",
      function()
        require("zellij-nav").right()
      end,
      desc = "Navigate right",
    },
  },
  opts = {},
}
