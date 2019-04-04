adb_list_packages() {
	adb shell 'pm list packages -f' | grep konviva
}
