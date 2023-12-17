-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_respect_buf_cwd = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function on_attach(bufnr)
    local api = require "nvim-tree.api"

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<leader>n', api.tree.toggle)
    vim.keymap.set('n', '<leader>,', api.tree.focus)
end

require("nvim-tree").setup({
  on_attach = on_attach,
  update_cwd = true,
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  view = {
    side = "left",
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    dotfiles = false,
  },
  diagnostics = {
    enable = true,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
})
