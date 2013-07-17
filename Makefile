all: macros.ini

macros.ini: ~/.config/texstudio/texstudio.ini
	egrep "^Macros" $< > $@
