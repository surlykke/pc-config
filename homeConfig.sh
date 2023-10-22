#!/usr/bin/bash
[[ "root" == "$(whoami)" ]] && { echo This script should not be run as root but as thy self; exit 1; }

# Try to figure out some env 
if [[ -z "$BROWSER" ]]; then
	for browser in chromium google-chrome brave-browser brave; do 
		if type $browser >/dev/null 2>/dev/null; then
			export BROWSER=$browser
			break
		fi
	done
	

	if [[ -z "$BROWSER" ]]; then
		echo "Env var BROWSER not set and no suitable browser found in path" >&2
		exit 1
	fi
fi	

if [[ -z "$MONITOR" ]]; then
	echo "Env var MONITOR not set" >&2  # FIXME Try to figure out
	exit 1
fi

cd $(dirname $0)

echo "Copying files under $HOME"

# Set up for envsubst
SHELL_FORMAT='$USER $MONITOR $BROWSER'

for dir in $(find home -type d -printf "%P\n"); do 
	mkdir -p ${HOME}/$dir
done

for file in $(find home -type f -printf "%P\n"); do 
	cat $(pwd)/home/$file | envsubst "'$SHELL_FORMAT'" > $HOME/$file
done
