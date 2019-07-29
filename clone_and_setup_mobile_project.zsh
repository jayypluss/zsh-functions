clone_and_setup_mobile_project() {
	git clone ssh://git@git.ilog.com.br:2222/konviva/mobile.git
	cd mobile
	git checkout konviva_ionic_v2_entrega
	npm install
	echo "Buildando o projeto para Android..."
	ionic cordova prepare android

	read "response?Rodar/instalar o app no Android ? [Y/n] "
	response=${response:l} #tolower
	if [[ $response =~ ^(yes|y|Y| ) ]] || [[ -z $response ]]; then
		ionic cordova run android
	fi
}