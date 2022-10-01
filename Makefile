DESTDIR := ~/.config
FILES := starship.toml

.PHONY: all clean install uninstall
all:

claen:

install: $(FILES)
	mkdir -p $(DESTDIR)
	cp $(FILES) $(DESTDIR)/

uninstall:
	rm $(addprefix $(DESTDIR)/, $(FILES))
