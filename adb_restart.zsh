adb_restart() {
	adb kill-server
	adb start-server
}
