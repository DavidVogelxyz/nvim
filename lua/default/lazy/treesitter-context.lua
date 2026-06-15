return {
    "nvim-treesitter/nvim-treesitter-context",
    opts = function()
        --local tsc = require("treesitter-context")
        --Snacks.toggle({
        --    name = "Treesitter Context",
        --    get = tsc.enabled,
        --    set = function(state)
        --        if state then
        --            tsc.enable()
        --        else
        --            tsc.disable()
        --        end
        --    end,
        --}):map("<leader>ut")
        return {
            mode = "topline", -- Line used to calculate context. Choices: 'cursor', 'topline'
            max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        }
    end,
}
