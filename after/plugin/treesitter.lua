require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "make", "cpp", "llvm", "latex", "javascript", "typescript", "rust", "vim" , "lua" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

local parser_config = require"nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
