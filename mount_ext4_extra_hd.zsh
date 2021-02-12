mount_ext4_extra_hd() {
	echo "Mounting ext_extra_hd partition to ~/ext4_extra_hd"
	mkdir -p ~/ext4_extra_hd
    sudo mount --verbose UUID="96fe653b-0064-49b9-92ef-51a93b8dca40" ~/ext4_extra_hd
    cd ~/ext4_extra_hd
}