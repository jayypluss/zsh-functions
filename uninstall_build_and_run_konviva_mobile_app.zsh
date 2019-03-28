uninstall_build_and_run_konviva_mobile_app() {
	adb uninstall sabesp.konviva.com.br
	adb uninstall com.konvivamobile
	ionic cordova prepare android --verbose
	ionic cordova run android --verbose
}
