all: macros.ini

TEXSTUDIO_CONFIG_FILE=~/.config/texstudio/texstudio.ini

macros.ini: $(TEXSTUDIO_CONFIG_FILE)
	egrep "^Macros" $< > $@

edit:
	$(firstword $(EDITOR) nano) $(TEXSTUDIO_CONFIG_FILE)
