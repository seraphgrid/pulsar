# ███╗   ███╗ █████╗ ██╗  ██╗███████╗
# ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝
# ██╔████╔██║███████║█████╔╝ █████╗
# ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝
# ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗
# ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

.PHONY: install-configs install-scripts uninstall-configs uninstall-scripts help

#  ___ ___  _    ___  ___  ___
# / __/ _ \| |  / _ \| _ \/ __|
#| (_| (_) | |_| (_) |   /\__ \
# \___\___/|____\___/|_|_\|___/
#

RESET := $(shell tput sgr0)
RED := $(shell tput setaf 1)
GREEN := $(shell tput setaf 2)
YELLOW := $(shell tput setaf 3)

# _  _ ___ _    ___
#| || | __| |  | _ \
#| __ | _|| |__|  _/
#|_||_|___|____|_|
#

help:

	@echo "${YELLOW}make help${RESET} - Show this help."
	@echo "${YELLOW}make install-scripts${RESET} - Install the scripts."
	@echo "${YELLOW}make install-configs${RESET} - Install the configs."
	@echo "${YELLOW}make uninstall-scripts${RESET} - Uninstall the scripts."
	@echo "${YELLOW}make uninstall-configs${RESET} - Uninstall the configs."

# ___     ___ ___  _  _ ___ ___ ___ ___
#|_ _|__ / __/ _ \| \| | __|_ _/ __/ __|
# | |___| (_| (_) | .` | _| | | (_ \__ \
#|___|   \___\___/|_|\_|_| |___\___|___/
#

install-configs:

	@echo "\n${GREEN}INSTALLING SCRIPTS: ${RESET}"
	mkdir -p ~/.config/pulsar
	cp -rf configs/* ~/.config/pulsar/

# ___    ___  ___ ___ ___ ___ _____ ___
#|_ _|__/ __|/ __| _ \_ _| _ \_   _/ __|
# | |___\__ \ (__|   /| ||  _/ | | \__ \
#|___|  |___/\___|_|_\___|_|   |_| |___/
#

install-scripts:

	@echo "\n${GREEN}LINKING PULSAR SCRIPTS: ${RESET}"
	mkdir -p /usr/local/bin
	sudo ln -srf scripts/pulsar-scripts/pulsar-* /usr/local/bin/

	@echo "\n${GREEN}LINKING TPULSAR SCRIPTS: ${RESET}"
	mkdir -p /usr/local/bin
	sudo ln -srf scripts/tpulsar-scripts/tpulsar-* /usr/local/bin/

# _   _      ___ ___  _  _ ___ ___ ___ ___
#| | | |___ / __/ _ \| \| | __|_ _/ __/ __|
#| |_| |___| (_| (_) | .` | _| | | (_ \__ \
# \___/     \___\___/|_|\_|_| |___\___|___/
#

uninstall-configs:

	@echo "\n${RED}REMOVING CONFIG FILES: ${RESET}"
	rm -rfI ~/.config/pulsar

#  _   _     ___  ___ ___ ___ ___ _____ ___
# | | | |___/ __|/ __| _ \_ _| _ \_   _/ __|
# | |_| |___\__ \ (__|   /| ||  _/ | | \__ \
#  \___/    |___/\___|_|_\___|_|   |_| |___/
#

uninstall-scripts:

	@echo "\n${RED}REMOVING PULSAR SCRIPTS: ${RESET}"
	rm -I /usr/local/bin/pulsar-*

	@echo "\n${RED}REMOVING TPULSAR SCRIPTS: ${RESET}"
	rm -I /usr/local/bin/tpulsar-*
