require("tokyonight").setup({
    style = "night",
    styles = {functions = {}},
    on_highlights = function (h1, c)
        local prompt = "#da696d"
        h1.operator = {
            fg = prompt,
        }
        h1.keyword = {
            fg = prompt,
        }
        h1.label = {
            fg = prompt,
        }
        h1.field = {
            fg = prompt,
        }
        h1.constructor = {
            fg = prompt,
        }
        h1.parameter = {
            fg = prompt,
        }
    end,
})

function ColorMyPencils(color)
	color = color or 'tokyonight'
	vim.cmd.colorscheme(color)
	-- vim.cmd("colorscheme " .. vim.g.arjun_colorscheme)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("@lsp.type.class.cpp", {})
    hl("@lsp.typemod.method.defaultLibrary.cpp", {})
    hl("@lsp.typemod.function.defaultLibrary.cpp", {})
    hl("@lsp.type.macro.cpp", {})
    hl("@operator", {
        fg = "#dad591"
    })
    hl("@lsp.type.type_identifier", {
        fg = "#b8860b"
    })
    hl("@type", {
        fg = "#b8860b"
    })
    hl("@variable", {
        fg = "#e1e1de"
    })
    hl("Type", {
        fg = "#289bb2"
    })
    hl("Statement", {
        fg = "#9e70ef"
    })
    hl("Conditional", {
        fg = "#da696d"
    })
end

ColorMyPencils()
