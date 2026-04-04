return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    -- on 2026 Apr 1, `nvim-treesitter` dropped support for Neovim v0.11
    -- to fix this, `nvim-treesitter` is now pinned to "last good commit"
    --branch = "main",
    pin = true,
    version = "90cd6580e720caedacb91fdd587b747a6e77d61f",
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
            "yaml",
            "zsh"
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
                "yaml",
                "zsh"
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
