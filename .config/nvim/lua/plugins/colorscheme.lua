--return{
--    "blazkowolf/gruber-darker.nvim"
--}

-- return { "savq/melange-nvim" }

-- lua/plugins/rose-pine.lua
--return {
--	"rose-pine/neovim",
--	name = "rose-pine",
--	config = function()
--        require("rose-pine").setup({
--            variant = "dawn", -- auto, main, moon, or dawn
--            dark_variant = "moon", -- main, moon, or dawn
--            dim_inactive_windows = false,
--            extend_background_behind_borders = true,
--
--            styles = {
--                bold = true,
--                italic = false,
--            },
--
--            palette = {
--                dawn = {
--                    base='#fcf5e4',
--                    surface = "#EBE5DA",
--                    overlay = "#E1D8C9",
--                    muted = "#8A8073",
--                    subtle = "#A39788",
--                    text = "#4A4540",
--                    love = "#C4727F",
--                    gold = "#C49646",
--                    rose = "#B3808D",
--                    pine = "#78997A",
--                    foam = "#7B9C9C",
--                    iris = "#A0829D",
--                    highlight_low = "#EBE5DA",
--                    highlight_med = "#E1D8C9",
--                    highlight_high = "#C8BDB0",
--                }
--            },
--            highlight_groups = {
--                Keyword = { bold = true },
--                Statement = { bold = true },
--                Conditional = { bold = true },
--                Repeat = { bold = true },
--                Exception = { bold = true },
--                Include = { bold = true },
--                Type = { bold = true },
--            }
--        })
--
--        vim.cmd("colorscheme rose-pine-dawn")
--	end
--}


-- lua/plugins/colorscheme.lua

--return {
--  dir = "~/.config/nvim/local/pastel_60s.nvim",
--  name = 'pastel_60s',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require("pastel_60s").load()
--  end,
--}

--return {
--    'miikanissi/modus-themes.nvim',
--    priority = 1000,
--    config = function()
--        require("modus-themes").setup({
--            -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
--            -- `auto` will automatically set style based on background set with vim.o.background
--            style = "modus_operandi",
--            variant = "tinted", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
--            transparent = false, -- Transparent background (as supported by the terminal)
--            dim_inactive = false, -- "non-current" windows are dimmed
--            hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
--            line_nr_column_background = true, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
--            sign_column_background = true, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
--            styles = {
--                -- Style to be applied to different syntax groups
--                -- Value is any valid attr-list value for `:help nvim_set_hl`
--                comments = { italic = false },
--                keywords = { italic = false, bold = true, },
--                functions = { bold = true, },
--                variables = { bold = true, },
--            },
--
--            --- You can override specific color groups to use other groups or a hex color
--            --- Function will be called with a ColorScheme table
--            --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
--            ---@param colors ColorScheme
--            on_colors = function(colors) end,
--
--            --- You can override specific highlights to use other groups or a hex color
--            --- Function will be called with a Highlights and ColorScheme table
--            --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
--            ---@param highlights Highlights
--            ---@param colors ColorScheme
--            on_highlights = function(highlights, colors) end,
--        })
--    end
--}

--return {
--    'luisiacc/handmade-hero-theme',
--    config = function()
--        vim.cmd([[colorscheme handmade-hero-theme]])
--    end


--return {
--    'blazkowolf/gruber-darker.nvim',
--    opts = {
--        italic = {
--            strings = false,
--            comments = false,
--            operators = false,
--            folds = false,
--        },
--    },
--}

return {
    'sainnhe/gruvbox-material',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "gruvbox-material",
            callback = function()
                local bold_groups = {
                    "Keyword", "Statement", "Conditional",
                    "Repeat", "Exception", "Include", "Type"
                }
                for _, group in ipairs(bold_groups) do
                    -- Fetch the resolved colors (link = false ensures we get the actual hex codes, not just a reference)
                    local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
                    -- Add the bold attribute
                    hl.bold = true
                    -- Reapply the highlight group with the preserved colors
                    vim.api.nvim_set_hl(0, group, hl)
                end
            end,
        })

        vim.cmd([[
            set background=light
            let g:gruvbox_material_better_performance = 1
            let g:gruvbox_material_foreground = 'original'
            let g:gruvbox_material_background = 'soft'
            let g:gruvbox_material_colors_override = {'bg0':['#fcf5e4', '234']}
            let g:gruvbox_material_disable_italic_comment = 1
            let g:gruvbox_material_enable_bold = 1

            let g:gruvbox_material_diagnostic_text_highlight = 1
            " let g:gruvbox_material_diagnostic_line_highlight = 1
            let g:gruvbox_material_diagnostic_virtual_text = "colored"
            let g:gruvbox_material_sign_column_background = 'none'

            colorscheme gruvbox-material
            ]])
    end,
}

--return {
--    'ellisonleao/gruvbox.nvim',
--    priority = 1000,
--    config = function ()
--        vim.o.background = 'dark'
--        require('gruvbox').setup({
--            bold = true,
--            italic = {
--                strings = false,
--                emphasis = false,
--                comments = false,
--                operators = false,
--                folds = false,
--            },
--            contrast = 'dark',
--        })
--        vim.cmd([[colorscheme gruvbox]])
--    end
--}

