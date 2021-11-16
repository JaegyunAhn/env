lua << EOF
    require('gitsigns').setup{}
EOF

nnoremap <leader>gb <cmd>lua require('gitsigns').blame_line()<cr>
