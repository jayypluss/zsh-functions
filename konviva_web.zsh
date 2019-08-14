konviva_run_dependencies() {
	systemctl start httpd.service mariadb.service mongodb.service
}

konviva_run_frontend_server() {
	cd ~/Dev/konviva_web/src/main/frontend/ecommerce/
	grunt
	cd ~/Dev/konviva_web/src/main/frontend/konviva/
	grunt
	node server3
}