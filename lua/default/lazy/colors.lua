-- Set colorscheme using a protected call (in case it's not installed)
--local status, _ = pcall(vim.cmd, "colorscheme synthwave84")
--if not status then
--    print("Colorscheme 'synthwave84' not found! Using default colorscheme.")
--    return
--end

function ColorMyPencils(color)
    color = color or "synthwave84"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- other settings for `ColorMyPencils`
    --vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    --vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    --vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
    --vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = "none" })
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
