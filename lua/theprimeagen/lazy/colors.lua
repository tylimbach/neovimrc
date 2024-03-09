function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = "dawn",
                -- dark_variant = "dawn",
                transparent = true,
                styles = {
                    transparency = true,
                    italic = false,
                    bold = true
                }
            })
        end
    },
    {
        "yorickpeterse/nvim-grey",
        name = "grey",
    },
    {
        "yorickpeterse/vim-paper",
        name = "paper",
    },
    {
        "plan9-for-vimspace/acme-colors",
        name = "acme"
    },
    {
        "catppuccin/nvim",
        name = "catpuccin"
    },
    {
        "maxmx03/solarized.nvim",
        name = "solarized",
        config = function()
            vim.o.background = 'light'
            require('solarized').setup({
                transparent = false, -- enable transparent background
                palette = 'solarized', -- or selenized
                styles = {
                  comments = {},
                  functions = {},
                  variables = {},
                  numbers = {},
                  constants = {},
                  parameters = {},
                  keywords = {},
                  types = {},
                },
                enables = {
                  bufferline = true,
                  cmp = true,
                  diagnostic = true,
                  dashboard = true,
                  editor = true,
                  gitsign = true,
                  hop = true,
                  indentblankline = true,
                  lsp = true,
                  lspsaga = true,
                  navic = true,
                  neogit = true,
                  neotree = true,
                  notify = true,
                  noice = true,
                  semantic = true,
                  syntax = true,
                  telescope = true,
                  tree = true,
                  treesitter = true,
                  todo = true,
                  whichkey = true,
                  mini = true,
                },
                highlights = {},
                colors = {},
                theme = 'default', -- or 'neo'
                autocmd = true,
            })
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        config = function()
            require('gruvbox').setup({
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {
                -- Delimiter = { fg = '#282828' },
                -- Special = { fg = '#282828' },
                -- Operator = { fg = '#282828' },
                -- MatchParen = { bg = '#88ffff' }
            },
            dim_inactive = false,
            transparent_mode = false,
        })
        ColorMyPencils()
        end
    }
}
