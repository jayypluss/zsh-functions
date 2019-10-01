uninstall_build_and_run_konviva_mobile_app() {
	uninstall_all_konviva_apks
	ionic cordova prepare android --verbose
	ionic cordova run android --verbose
}
