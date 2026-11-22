return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        prepend_args = function(_, ctx)
          local root = vim.fs.root(ctx.dirname, ".prettierignore")
          return root and { "--ignore-path", root .. "/.prettierignore" } or {}
        end,
      },
      shfmt = {
        prepend_args = function(_, ctx)
          return vim.bo[ctx.buf].filetype == "zsh" and { "-ln=zsh" } or {}
        end,
      },
    },
    formatters_by_ft = {
      bash = { "shfmt" },
      zsh = { "shfmt" },
    },
  },
}
