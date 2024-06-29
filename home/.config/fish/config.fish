set fish_greeting

set __temp_fish_startup_command $fish_startup_command
set -ge fish_startup_command 
eval $__temp_fish_startup_command

# git stuff
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# profile

set -gx LANG da_DK.UTF-8
if not string match -q $PATH "$HOME/.local/bin"; 
	set -gx PATH $HOME/.local/bin $PATH
end;
set -gx TERMINAL alacritty 
set -gx EDITOR vim
set -gx DEFAULT_MONITOR $DEFAULT_MONITOR

set -gx SDL_VIDEODRIVER wayland
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -gx QT_QPA_PLATFORM wayland
set -gx XDG_CURRENT_DESKTOP sway
set -gx XDG_SESSION_DESKTOP sway

if status --is-login; 
	if not ps -ef | grep -q [s]way; 
		exec sway ; 
	end
end
