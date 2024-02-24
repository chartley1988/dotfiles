return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    init = function()
        -- vim.g.mkdp_markdown_css = "/Users/chartley/.config/nvim/lua/plugins/markdown_preview.css"
    end,
}
