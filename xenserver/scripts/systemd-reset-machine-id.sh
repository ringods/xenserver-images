#!/bin/sh -eux

# Cleaning up /etc/machine-id. Without this file, the systemd firstboot functionality
# kicks in when a new VM is launched from the Xenserver image.
# https://www.freedesktop.org/software/systemd/man/systemd.unit.html#ConditionArchitecture=

rm /etc/machine-id
touch /etc/machine-id
