umount_windows() {
	echo "Umounting Windows SO partition and ExtraStorage partition"
	mkdir -p ~/windows/Windows
	mkdir -p ~/windows/Windows_Extra
    sudo umount --verbose ~/windows/Windows
    sudo umount --verbose ~/windows/Windows_Extra
}