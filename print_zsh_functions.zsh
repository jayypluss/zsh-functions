print_zsh_functions() {
	show_usage() {
    	echo "-v 			-- verbose."
    	echo "-p <path>		-- override default path to print."
    	echo "-h			-- shows this help."
	}
	ZSH_FUNCTIONS_PATH="/home/jonathanfk/.config/zsh/functions"
	verbose='false'
	act='true'
	while getopts 'vp:h' opt
	do
	  case $opt in
	    v) verbose='true' ;;
	  	p) ZSH_FUNCTIONS_PATH="${OPTARG}" ;;
	  	h) show_usage; act='false' ;;
	  esac
	done
	if [[ $act == 'true' ]]; then
		if [[ $verbose == 'true' ]]; then
			for function in $ZSH_FUNCTIONS_PATH/*; do
			    if [ ${function} != "/home/jonathanfk/.config/zsh/functions/README.md" ]; then 
			    	echo "FUNCTION PATH/NAME: "
			    	echo ${function}
			    	echo "FUNCTION DECLARATION: "
				    cat ${function}
				    echo "\n"
				fi
			done
		else
			ls $ZSH_FUNCTIONS_PATH | egrep .zsh
		fi
	fi

}