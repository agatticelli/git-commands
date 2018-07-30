BIN_DIR   = /usr/local/bin
LOADER    = git-jira
COMMANDS  = git-jira-take
HELPERS   = jira-helpers

all:
	@echo "usage: make [install|uninstall]"

install:
	install -d -m 0755 $(BIN_DIR)
	install -m 0755 $(LOADER) $(BIN_DIR)
	install -m 0644 $(COMMANDS) $(BIN_DIR)
	install -m 0644 $(HELPERS) $(BIN_DIR)

uninstall:
	test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(LOADER) $(COMMANDS) $(HELPERS)

