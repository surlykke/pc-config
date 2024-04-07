require('telescope').setup{
    -- ...
}


vim.api.nvim_set_keymap('n', 'fd',  [[<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true, silent = true })               -- goto definition
vim.api.nvim_set_keymap('n', 'fr',  [[<Cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true, silent = true })                -- find references
vim.api.nvim_set_keymap('n', 'fi',  [[<Cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true, silent = true })           -- find implementations 
vim.api.nvim_set_keymap('n', 'fe',  [[<Cmd>lua require('telescope.builtin').diagnostics()<CR>]], { noremap = true, silent = true })                   -- find errors
vim.api.nvim_set_keymap('n', 'fa',  [[<Cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]], { noremap = true, silent = true })              -- find code actions
vim.api.nvim_set_keymap('n', 'ff',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })                     -- find files
vim.api.nvim_set_keymap('n', 'ft',  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })                     -- find text
vim.api.nvim_set_keymap('n', 'fs',  [[<Cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]], { noremap = true, silent = true }) -- find symbol
vim.api.nvim_set_keymap('n', 'fh',  [[<Cmd>lua require('telescope.builtin').resume()<CR>]], { noremap = true, silent = true })                        
vim.api.nvim_set_keymap('n', 'fo',  [[<Cmd>lua require('telescope.builtin').pickers()<CR>]], { noremap = true, silent = true })                        

