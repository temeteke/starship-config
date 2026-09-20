BIN_DIR := ~/.local/bin
CONFIG_DIR := ~/.config
FILES := starship.toml

.PHONY: all clean install install-config install-bin uninstall uninstall-config uninstall-bin
all:

clean:

install: install-bin install-config

install-config: $(FILES)
	mkdir -p $(CONFIG_DIR)
	cp -a $(FILES) $(CONFIG_DIR)/

install-bin:
	mkdir -p $(BIN_DIR)
	curl -sS https://starship.rs/install.sh | sh -s -- -f --bin-dir $(BIN_DIR)

uninstall: uninstall-config uninstall-bin

uninstall-config:
	rm -f $(addprefix $(CONFIG_DIR)/, $(FILES))

uninstall-bin:
	rm -f $(BIN_DIR)/starship
