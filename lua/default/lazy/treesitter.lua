return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup()
        treesitter.install {
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
        }

        vim.api.nvim_create_autocmd('FileType',{
            pattern = {
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
                "python",
                "query",
                "rust",
                "sh",
                "typescript",
                "vim",
                "vimdoc",
            },
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}
