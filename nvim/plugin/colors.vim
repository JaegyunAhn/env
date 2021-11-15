lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
}
EOF

let g:nvcode_termcolors=256

syntax on
colorscheme onedark

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

