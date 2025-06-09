return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')

        -- map ctrl+f to telescope find files
        vim.keymap.set('n', '<C-f>', builtin.find_files, {})

        -- map <leader>+pf to telescope find files
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

        -- map ctrl+p to telescope find git files
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        -- map leader+ps to telescope grep
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)

        -- map <leader>+pws to grep using telescope
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)

        -- map <leader>+pWs to grep using telescope
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        -- map <leader>+vh to help tags
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
