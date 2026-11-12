return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters = {
        prettier = {
          prepend_args = function(_, ctx)
            local dirname = (ctx and ctx.dirname) or vim.fs.dirname(vim.api.nvim_buf_get_name(0))
            if not dirname or dirname == "" then
              return {}
            end

            local prettierignore = vim.fs.root(dirname, { ".prettierignore" })
            if not prettierignore then
              return {}
            end

            return { "--ignore-path", prettierignore .. "/.prettierignore" }
          end,
        },
        shfmt = {
          prepend_args = function(_, ctx)
            if vim.bo[ctx.buf].filetype == "zsh" then
              return { "-ln=zsh" }
            end
            return {}
          end,
        },
      },
      formatters_by_ft = {
        typescript = { "prettier" },
        javascript = { "prettier" },
        typescriptreact = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        bash = { "shfmt" },
        zsh = { "shfmt" },
      },
    },
  }