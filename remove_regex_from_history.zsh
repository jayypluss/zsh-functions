remove_regex_from_history() {
	LC_ALL=C sed -i $@ $HISTFILE
}