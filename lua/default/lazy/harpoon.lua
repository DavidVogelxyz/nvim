return {
    "ThePrimeagen/harpoon",

    branch = "harpoon2",

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        -- prepends the file to the harpoon list
        vim.keymap.set("n", "<leader>A", function()
            harpoon:list():prepend()
        end)

        -- appends the file to the harpoon list
        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end)

        -- opens the quick menu - original keybind
        vim.keymap.set("n", "<C-h>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        -- opens the quick menu - new keybind
        --vim.keymap.set("n", "<C-d>", function()
        --    harpoon.ui:toggle_quick_menu(harpoon:list())
        --end)

        -- go to file at postition 1
        vim.keymap.set("n", "<C-j>", function()
            harpoon:list():select(1)
        end)

        -- go to file at postition 2
        vim.keymap.set("n", "<C-k>", function()
            harpoon:list():select(2)
        end)

        -- go to file at postition 3
        vim.keymap.set("n", "<C-l>", function()
            harpoon:list():select(3)
        end)

        -- go to file at postition 4
        --vim.keymap.set("n", "<C-o>", function()
        --    harpoon:list():select(4)
        --end)

        -- replace the file at position 1
        vim.keymap.set("n", "<leader><C-j>", function()
            harpoon:list():replace_at(1)
        end)

        -- replace the file at position 2
        vim.keymap.set("n", "<leader><C-k>", function()
            harpoon:list():replace_at(2)
        end)

        -- replace the file at position 3
        vim.keymap.set("n", "<leader><C-l>", function()
            harpoon:list():replace_at(3)
        end)

        -- replace the file at position 4
        --vim.keymap.set("n", "<leader><C-o>", function()
        --    harpoon:list():replace_at(4)
        --end)
    end
}
