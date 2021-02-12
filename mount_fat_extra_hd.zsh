mount_fat_extra_hd() {
	echo "Mounting fat_extra_hd partition to ~/fat_extra_hd"
	mkdir -p ~/fat_extra_hd
    sudo mount --verbose UUID="FD97-7738" ~/fat_extra_hd
    cd ~/fat_extra_hd
}