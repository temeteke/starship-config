BIN_DIR := ~/.local/bin
CONFIG_DIR := ~/.config
FILES := starship.toml

.PHONY: all clean install uninstall
all:

claen:

install: $(FILES)
	curl -sS https://starship.rs/install.sh | sh -s -- -f --bin-dir $(BIN_DIR)
	mkdir -p $(CONFIG_DIR)
	cp -a $(FILES) $(CONFIG_DIR)/

uninstall:
	rm -f $(BIN_DIR)/starship
	rm -f $(addprefix $(CONFIG_DIR)/, $(FILES))
