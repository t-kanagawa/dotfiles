#/bin/bash -eu

function main () {

	echo 'export XDG_CONFIG_HOME="${HOME}/.config"' >> ${HOME}/.bashrc
	echo 'export XDG_CACHE_HOME="${HOME}/.cache"' >> ${HOME}/.bashrc
	
	. ${HOME}/.bashrc
	pwd
	echo ${XDG_CONFIG_HOME}

	mkdir -p ${HOME}/nvim

	cp ./init.vim ${XDG_CONFIG_HOME}/nvim/
	cp -r ./toml ${XDG_CONFIG_HOME}/nvim/
}

main
