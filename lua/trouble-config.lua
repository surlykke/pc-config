require('trouble').setup{ }

vim.api.nvim_set_keymap('n', '<space>e',  [[<Cmd>TroubleToggle<CR>]], { noremap = true, silent = true })                        

