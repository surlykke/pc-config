local helpTxt = [[      Keybindings

 fh           Show/hide this window
 gd           Goto definition
 gn           Goto next
 gp           Goto previous
 K            Show documentation for symbol under cursor
 fr           Find references
 fi           Find implementations
 fe           Find errors
 fa           Show actions
 ff           Find files
 ft           Find text
 fs           Find symbol
 fp           Resume search
 tt           Show/hide error list
 <space>rn    Rename
 <space>f     Format buffer 
 <space>o     Organize imports
 <space>af    Add folder
 <space>rf    Remove folder
]]

local help_popup = nil

function closeHelpWindow() 
	if help_popup and vim.api.nvim_win_is_valid(help_popup) then
		vim.api.nvim_win_close(help_popup, true)
		help_popup = nil
		return true
	end
	return false
end

function lines_from(file)
  if not file_exists(file) then return {} end
  local lines = {}
  return lines
end

 

function toggleHelpWindow()
	if not closeHelpWindow() then
		local buf = vim.api.nvim_create_buf(false, true)
		vim.api.nvim_buf_set_keymap(buf, 'n', '<Escape>',  [[<Cmd>lua closeHelpWindow()<CR>]], { noremap = true, silent = true })
		vim.api.nvim_buf_set_keymap(buf, 'n', '<Return>',  [[<Cmd>lua closeHelpWindow()<CR>]], { noremap = true, silent = true })
	    local lines = {}
        for line in helpTxt:gmatch("([^\n]*)\n?") do
            lines[#lines + 1] = line
        end
        vim.api.nvim_buf_set_lines(buf, 0, 0, false, lines)
		help_popup = vim.api.nvim_open_win(buf, true, {style='minimal', border='double', relative='win', row=4, col=10, width=60, height=26})	
		vim.api.nvim_win_set_option(help_popup, 'winhl', 'Normal:')
	end
end

		

vim.api.nvim_set_keymap('n', 'fh',  [[<Cmd>lua toggleHelpWindow()<CR>]], { noremap = true, silent = true })


