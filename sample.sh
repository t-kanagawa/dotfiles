#/bin/bash

function main () {
	a=`grep -o "XDG_CONFIG_HOME" ~/.bashrc | wc -l`
	echo ${a}
	if [ "${a}" = "1" ]; then
		echo aaa
	else
		echo bbb
	fi	
}

main
