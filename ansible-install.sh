#!/usr/bin/env bash

SUDO=''
if (( "$(id -u)" != 0 )); then
	SUDO='sudo'
fi

echo "adding ansible repo"
$SUDO apt-add-repository ppa:ansible/ansible

echo "updating apt cache"
$SUDO apt update

echo "installing ansible"
$SUDO apt -y install python3 ansible
