return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = { ":TSUpdate" },
    init = function()
        local treesitter = require("nvim-treesitter")
        local parser_installed = {
            "bash",
            "c",
            "diff",
            "git_config",
            "git_rebase",
            "gitcommit",
            "gitignore",
            "go",
            "html",
            "javascript",
            "jsdoc",
            "lua",
            "markdown",
            "python",
            "query",
            "rust",
            "typescript",
            "vim",
            "vimdoc",
            "yaml"
        }

        treesitter.setup()
        treesitter.install(parser_installed)
        --treesitter.update()

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "c",
                "diff",
                "gitconfig",
                "git_rebase",
                "gitcommit",
                "gitignore",
                "go",
                "html",
                "javascript",
                "jsdoc",
                "lua",
                "python",
                "query",
                "rust",
                "sh",
                "typescript",
                "vim",
                "vimdoc",
                "yaml"
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
