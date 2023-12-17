require('nvim-treesitter.configs').setup({
    ensure_installed = { "typescript", "javascript", "css", "json", "html", "tsx" },
    highlight = {
        enable = true,
    }
})
