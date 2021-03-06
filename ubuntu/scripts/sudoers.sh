#!/bin/sh -eux

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers;

# Set up password-less sudo for the $VAGRANT_USER user
echo '$VAGRANT_USER ALL=(ALL) NOPASSWD:ALL' >/etc/sudoers.d/99_$VAGRANT_USER
chmod 440 /etc/sudoers.d/99_$VAGRANT_USER;
