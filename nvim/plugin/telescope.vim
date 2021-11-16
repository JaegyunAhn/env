lua << EOF
    require('telescope').load_extension('fzf')
EOF

nnoremap <leader>ff <CMD>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg <CMD>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <CMD>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <CMD>lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>fw <CMD>lua require('telescope.builtin').grep_string()<CR>

nnoremap <leader>jd :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <leader>ji :lua require('telescope.builtin').lsp_implementations()<CR>
nnoremap <leader>jr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <leader>ca :lua require('telescope.builtin').lsp_code_actions()<CR>

