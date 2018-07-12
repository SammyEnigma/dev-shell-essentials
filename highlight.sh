#!/usr/bin/env bash

function highlight() {
	for (( i=1; i <= "$#"; ++i ))
	do
		SED_SCRIPT="${SED_SCRIPT:+${SED_SCRIPT};}s/${!i}/$(tput setab $i)\0$(tput sgr0)/g"
	done
	
	sed --unbuffered "$SED_SCRIPT"
}
