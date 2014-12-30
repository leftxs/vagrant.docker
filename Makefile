SHELL := /bin/bash
VENV=.
NO_COLOR    = \x1b[0m
OK_COLOR    = \x1b[32;01m

.PHONY: install build all

install:
	@echo -e "${OK_COLOR}>>> Creating virtuelenv...${NO_COLOR}"
	virtualenv --python=python2.7 --no-site-packages $(VENV)

	@echo -e "${OK_COLOR}>>> Install Ansible...${NO_COLOR}"
	bash -c "source bin/activate && pip install ansible"

	@echo -e "${OK_COLOR}>>> Install MkDocs...${NO_COLOR}"
	bash -c "source bin/activate && pip install mkdocs"

	@echo -e "${OK_COLOR}>>> Install Pip-tools...${NO_COLOR}"
	bash -c "source bin/activate && pip install pip-tools"

	@echo -e "${OK_COLOR}>>> Installing vagrant-hostupdater ...${NO_COLOR}"
	vagrant plugin install vagrant-hostsupdater

	@echo -e "${OK_COLOR}>>> Installing vagrant-vbguest ...${NO_COLOR}"
	vagrant plugin install vagrant-vbguest

build:
	@echo -e "${OK_COLOR}>>> Hold on we are building now!...${NO_COLOR}"
	bash -c "source bin/activate && vagrant up"

all:
	@echo -e"${OK_COLOR}>>> bootstraping and building, this will take some time${NO_COLOR}"
	bootstrap
	build
