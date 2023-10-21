#!/usr/bin/bash
[[ "root" == "$(whoami)" ]] || { echo Need root privileges; exec sudo $0; }

cd $(realpath $(dirname $0))

echo "Copying files under /etc"

for etcdir in $(find etc -type d -printf "%P\n"); do 
	sudo mkdir -p /etc/$etcdir 
done

for file in $(find etc -type f -printf "%P\n"); do 
	sudo cp $(pwd)/etc/${file} /etc/${file}
done



