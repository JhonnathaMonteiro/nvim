return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            { "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
        },
        config = function()
            local neotest = require("neotest")
            require("neotest").setup({
                adapters = {
                    require("neotest-golang"), -- Registration
                },
            })

            vim.keymap.set("n", "<leader>tc", function()
                neotest.run.run()
            end)
        end,
    },
}
