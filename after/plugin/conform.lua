require("conform").setup({
    formatters_by_ft = {
        html = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        markdown = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        golang = { "gofmt" },
        zig = { "zigfmt" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
    formatters = {
        prettierd = {
            condition = function()
                return vim.loop.fs_realpath(".prettierrc.js") ~= nil or vim.loop.fs_realpath(".prettierrc.mjs") ~= nil
            end,
        },
    },
})
