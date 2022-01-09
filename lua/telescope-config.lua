require('telescope').setup{
    -- ...
}

vim.api.nvim_set_keymap('n', 'ff',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fr',  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fs',  [[<Cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fe',  [[<Cmd>lua require('telescope.builtin').diagnostics()<CR>]], { noremap = true, silent = true })

-- :nnoremap <silent> <Leader>tegf <Cmd>lua require('telescope.builtin').git_files()<CR>

