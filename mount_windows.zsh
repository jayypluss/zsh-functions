mount_windows() {
	echo "Mounting Windows SO partition and ExtraStorage partition"
	mkdir -p ~/windows/Windows
	mkdir -p ~/windows/Windows_Extra
    sudo mount --verbose UUID="4C8C97FC8C97DF30" ~/windows/Windows
    sudo mount --verbose UUID="1FBF30EF03BAA740" ~/windows/Windows_Extra
    cd ~/windows
}