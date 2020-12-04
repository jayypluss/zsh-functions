
reboot_to_windows() {
	sudo grub-reboot 'Windows Boot Manager (on /dev/nvme0n1p1)'
	sudo reboot
}
