-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.ai_cmp = false
vim.g.root_spec = { ".git", "lsp", "cwd" }

-- zsh has no treesitter grammar; reuse bash (mini.ai af/if, highlights, etc.)
vim.treesitter.language.register("bash", "zsh")
