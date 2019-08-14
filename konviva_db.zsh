mysql_dump_qa() {
	mysqldump -u admin -p -v -e --routines --single-transaction --max_allowed_packet=2147483648 -h mariadb.intra.ilog.com.br konviva_qa > arquivo_exportado.sql
}

mysql_replace_to_dumped() {
	mysql -u root -v konviva_gcb < konviva_gcb.2019-06-11
}

konviva_db_dump_qa() {
	mysql_dump_qa
}

konviva_replace_to_dumped() {
	mysql_replace_to_dumped
}

# senha da base mariadb.intra.ilog.com.br é 1l06SRV