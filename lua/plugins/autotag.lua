return {
    "windwp/nvim-ts-autotag",
    config = function()
        require("nvim-ts-autotag").setup({
            opts = {
                -- Defaults
                enable_close = true, -- Auto close tags
                enable_rename = true, -- Auto rename pairs of tags
                enable_close_on_slash = false -- Auto close on trailing </
            },
            filetypes = {
                "html", "xml", "javascript", "javascriptreact", "typescript", "typescriptreact", "jsx", "tsx"
            },
            skip_tags = {
                'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'input',
                'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr', 'menuitem'
            }
        })
    end
}
