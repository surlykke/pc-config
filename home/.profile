export QT_SELECT=5

export LANG=da_DK.UTF-8
if [[ ! $PATH =~ "$HOME/.local/bin" ]]; then 
	export PATH=$HOME/.local/bin:$PATH
fi
export TERMINAL=st
export EDITOR=vim
export _JAVA_AWT_WM_NONREPARENTING=1
