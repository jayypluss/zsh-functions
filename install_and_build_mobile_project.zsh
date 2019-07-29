install_and_build_mobile_project() {
	echo "\n Running npm install... \n"
	npm install

	read "response? Buildar o projeto para Android ou no iOS? [(a/android) OU (i/ios)] "
	response=${response:l} #tolower
	if [[ $response =~ ^(android|a|A| ) ]] || [[ -z $response ]]; then
		echo "\n Running cordova PREPARE ANDROID... \n"
		ionic cordova prepare android
	elif [[ $response =~ ^(ios|i|I| ) ]] || [[ -z $response ]]; then
		echo "\n Running cordova PREPARE IOS... \n"
		ionic cordova prepare ios
	fi

	read "response? Rodar/instalar o app? [a/i/(''/n)]"
	response=${response:l} #tolower
	if [[ $response = ^(no|n|N| ) ]] || [[ -z $response ]]; then
		echo "\n Doing nothing.. \n"
	elif [[ $response =~ ^(android|a|A ) ]] || [[ -z $response ]]; then
		echo "\n Running cordova RUN ANDROID... \n"
		ionic cordova run android
	elif [[ $response =~ ^(ios|i|I ) ]] || [[ -z $response ]]; then
		echo "\n Running cordova RUN IOS... \n"
		ionic cordova run ios
	fi
}