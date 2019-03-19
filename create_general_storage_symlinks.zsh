create_general_storage_symlinks() {
	show_usage() {
    	echo "-v 			-- verbose."
    	echo "-p <path>		-- override default General_Storage path."
    	echo "-d <path>		-- override destination path."
    	echo "-h			-- shows this help."
	}
	GENERAL_STORAGE_PATH="/home/jonathanfk/mount/General_Storage"
	SYMLINK_DESTINATION="/home/jonathanfk"
	verbose='false'
	act='true'
	while getopts 'vp:d:h' opt
	do
	  case $opt in
	    v) verbose='true' ;;
	  	p) GENERAL_STORAGE_PATH="${OPTARG}" ;;
	  	d) SYMLINK_DESTINATION="${OPTARG}" ;;
	  	h) show_usage; act='false' ;;
	  esac
	done
	if [[ $act == 'true' ]]; then
		if [[ $verbose == 'true' ]]; then
			for folder in $GENERAL_STORAGE_PATH/*; do
		    	echo "GENERAL_STORAGE_PATH: "
		    	echo $GENERAL_STORAGE_PATH
		    	echo "PATH: "
		    	echo ${folder}
		    	echo "SYMLINK_DESTINATION: "
		    	echo $SYMLINK_DESTINATION
		    	ln -v -r -s ${folder} $SYMLINK_DESTINATION
			    echo "\n"
			done
		else
			for folder in $GENERAL_STORAGE_PATH/*; do
		    	ln -r -s ${folder} $SYMLINK_DESTINATION
			done
		fi
	fi

}