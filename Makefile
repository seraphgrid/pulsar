# ███╗   ███╗ █████╗ ██╗  ██╗███████╗
# ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝
# ██╔████╔██║███████║█████╔╝ █████╗
# ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝
# ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗
# ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

.PHONY: install-configs install-scripts uninstall-configs uninstall-scripts help

# Color definitions
RESET := $(shell tput sgr0)
RED := $(shell tput setaf 1)
GREEN := $(shell tput setaf 2)
YELLOW := $(shell tput setaf 3)

# Help target
help:

	@echo "${YELLOW}make help${RESET} - Show this help."
	@echo "${YELLOW}make install-scripts${RESET} - Install the scripts."
	@echo "${YELLOW}make install-configs${RESET} - Install the configs."
	@echo "${YELLOW}make uninstall-scripts${RESET} - Uninstall the scripts."
	@echo "${YELLOW}make uninstall-configs${RESET} - Uninstall the configs."

# Install configs target
install-configs:

	@echo "\n${GREEN}INSTALLING SCRIPTS: ${RESET}"
	mkdir -p ~/.config/pulsar
	cp -rf configs/* ~/.config/pulsar/

# Install scripts target
install-scripts:

	@echo "\n${GREEN}LINKING PULSAR SCRIPTS: ${RESET}"
	mkdir -p /usr/local/bin
	sudo ln -srf scripts/pulsar-scripts/pulsar-* /usr/local/bin/

	@echo "\n${GREEN}LINKING TPULSAR SCRIPTS: ${RESET}"
	mkdir -p /usr/local/bin
	sudo ln -srf scripts/tpulsar-scripts/tpulsar-* /usr/local/bin/

# Uninstall configs target
uninstall-configs:

	@echo "\n${RED}REMOVING CONFIG FILES: ${RESET}"
	rm -rfI ~/.config/pulsar

# Uninstall scripts target
uninstall-scripts:

	@echo "\n${RED}REMOVING PULSAR SCRIPTS: ${RESET}"
	rm -I /usr/local/bin/pulsar-*

	@echo "\n${RED}REMOVING TPULSAR SCRIPTS: ${RESET}"
	rm -I /usr/local/bin/tpulsar-*
