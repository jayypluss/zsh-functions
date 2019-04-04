new_branch_routine() {
	git checkout konviva_ionic_v2_entrega
	git pull
	git checkout -b $@
}