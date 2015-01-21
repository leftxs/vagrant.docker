SHELL := /bin/bash
VENV=.
NO_COLOR    = \x1b[0m
OK_COLOR    = \x1b[33;01m

.PHONY: help install boot all provision pip-update pip-list

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo -e "${OK_COLOR}install${NO_COLOR}			to create virtualenv, install ansible, pip-tools, mkdocs and vagrant-plugins"
	@echo -e "${OK_COLOR}boot${NO_COLOR}			to start up vagrant in acticated virtualenv and run vagrant up for the first time"
	@echo -e "${OK_COLOR}all${NO_COLOR}			to run install and build in one step"
	@echo -e "${OK_COLOR}provision${NO_COLOR}		run ansible against box to deploy changes"
	@echo -e "${OK_COLOR}pip-update${NO_COLOR}		to update all packages installed with pip"
	@echo -e "${OK_COLOR}pip-list${NO_COLOR}		to create a requirements.txt with all packages installed with pip"

bootstrap:
	@echo -e "${OK_COLOR}>>> Creating virtuelenv...${NO_COLOR}"
	virtualenv --python=python2.7 --no-site-packages $(VENV)
	@echo -e "${OK_COLOR}>>> Install Dependencies...${NO_COLOR}"
	bash -c "source bin/activate && pip install -r requirements.txt"

check:
	@echo -e "${OK_COLOR}>>> Checking dependencies ...${NO_COLOR}"
	./check.sh

boot:
	@echo -e "${OK_COLOR}>>> Hold on we are booting now!...${NO_COLOR}"
	bash -c "source bin/activate && vagrant up"

provision:
	@echo -e "${OK_COLOR}>>> Run ansible against box${NO_COLOR}"
	 bash -c "source bin/activate && vagrant provision"

all: install boot

pip-update:
	@echo -e"${OK_COLOR}>>> Upgrading all packes installed with pip${NO_COLOR}"
	pip-review --auto

pip-list:
	@echo -e"${OK_COLOR}>>> Creating requirements.txt with all your packages installed by pip${NO_COLOR}"
	pip-dump

install: bootstrap check boot
