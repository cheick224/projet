#!/bin/sh

set -e
set -u

HOSTNAME="$(hostname)"
VAGRANT_HOME="/home/vagrant"
ROOT_HOME="/root"
SYNC_FOLDER="/provision-files"

export DEBIAN_FRONTEND=noninteractive

# Allow the ansible SSH key
mkdir -p /root/.ssh
cat /provision-files/ansible_rsa.pub >> $ROOT_HOME/.ssh/authorized_keys || :
sort -u $ROOT_HOME/.ssh/authorized_keys > $ROOT_HOME/.ssh/authorized_keys.tmp
mv $ROOT_HOME/.ssh/authorized_keys.tmp $ROOT_HOME/.ssh/authorized_keys

# Fix rights for SSH related files
chmod 0600 $ROOT_HOME/.ssh/*
chmod 0644 $ROOT_HOME/.ssh/config || :
chmod 0700 $ROOT_HOME/.ssh

echo "SUCCESS ! KEYS AUTHORIZED !"
