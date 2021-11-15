nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>jd :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <leader>ji :lua require('telescope.builtin').lsp_implementations()<CR>
nnoremap <leader>jr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <leader>ca :lua require('telescope.builtin').lsp_code_actions()<CR>


