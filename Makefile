.DEFAULT_GOAL := help

install: ## Install the project
	@echo Installing the command
	@sudo cp bin/http.sh /usr/bin/http
	@echo Install successful
	@echo Example: http https://www.google.com.pe/search q==apple
	@echo For more commands read the complete documentation: https://github.com/clue/docker-httpie

uninstall: ## Uninstall the project
	@echo Uninstalling the command
	@sudo rm -f /usr/bin/http
	@echo Uninstall successful

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'