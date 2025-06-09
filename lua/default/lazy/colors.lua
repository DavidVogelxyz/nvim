function ColorMyPencils(color)
    color = color or "synthwave84"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- `Normal`is the main window
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- `NormalNC` is the main window when a float appears
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- `NormalFloat` is a floating window (ex. Lazy menu, Harpoon menu)
    --vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" }) -- `TelescopeNormal` is the main Telescope window (techinically, a floating window)
    --vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = "none" })
    --vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" }) -- `MsgArea` is the little area between the `vim-airline` bar and the `tmux` status bar
end

return {
    {
        "lunarvim/synthwave84.nvim",
        name = "synthwave84",
        config = function()
            require('synthwave84').setup({
                disable_background = true,

                glow = {
                    error_msg = true,
                    type2 = true,
                    func = true,
                    keyword = true,
                    operator = false,
                    buffer_current_target = true,
                    buffer_visible_target = true,
                    buffer_inactive_target = true,
                }
            })

            ColorMyPencils();
        end
    },
}
