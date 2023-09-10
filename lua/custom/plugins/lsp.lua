return {
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "jho.lsp"
        end
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    "jose-elias-alvarez/null-ls.nvim",
}