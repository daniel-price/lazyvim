return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = opts.servers or {}
    opts.servers.vtsls = vim.tbl_deep_extend("force", opts.servers.vtsls or {}, {
      root_dir = function(bufnr, on_dir)
        local path = vim.api.nvim_buf_get_name(bufnr)
        if path == "" then
          on_dir(vim.fn.getcwd())
          return
        end
        local util = require("lspconfig.util")
        local root = util.root_pattern("bun.lockb", ".git")(path)
          or util.root_pattern("tsconfig.json", "package.json")(path)
        on_dir(root)
      end,
    })
    return opts
  end,
}
