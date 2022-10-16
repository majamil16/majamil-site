PUBLIC_DIR:=$(shell pwd)/public

dev:
	hugo server

build:
	@echo ${PUBLIC_DIR}
	@if [[ -d ${PUBLIC_DIR} ]]; then \
		echo "public exists, removing"; \
		rm -r ${PUBLIC_DIR}; \
		echo "removed public"; \
	fi
	hugo