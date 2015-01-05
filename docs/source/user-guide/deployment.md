# Deployment

For easy usage there is a Makefile which will take care about the most. You can run it like

	make *$option*

To get a list off all options just run *make* 

	make

## Install

For installation just run *make install* this will take care about the base install.

	make install

## Boot

This will start up a already installed setup, this command is equal to *vagrant up*

	make boot

## Provision

This will run Ansible against the installed setup, this command is equal to *vagrant provision*
but will be executed in a activated virtualenv.

	make provision

## All

This will install, start and provision your setup, this command is useful for running the first time

	make all

## Pip-Update

You do want to upgrade the version of Ansible and for example Mkdocs, for this you can run

	make pip-update

and it will update all python apps, in the project environment. 

## Pip-List

If you want to create a file [requirements.txt] will all installed python apps, like Ansible and
MkDocs, please run:

	make pip-list