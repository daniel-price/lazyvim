vim.g.ai_cmp = false
vim.g.root_spec = { ".git", "lsp", "cwd" }

-- Use Bash's Tree-sitter grammar for Zsh.
vim.treesitter.language.register("bash", "zsh")
