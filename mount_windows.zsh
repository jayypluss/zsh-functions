mount_windows() {
	echo "Mounting Windows SO partition and ExtraStorage partition"
	mkdir -p ~/windows/Windows
	mkdir -p ~/windows/Windows_Extra
    sudo mount --verbose UUID=401CCBD11CCBBFE0 ~/windows/Windows
    sudo mount --verbose UUID=843A4B293A4B1796 ~/windows/Windows_Extra
    cd ~/windows
}