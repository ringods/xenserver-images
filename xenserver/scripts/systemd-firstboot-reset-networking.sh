#!/bin/sh -eux

# Cleaning up the firstboot networking setup. Without logs and state, all network
# interfaces will be scanned and plugged by /etc/firstboot.d/05-prepare-networking

rm -rf /etc/firstboot.d/log/*
rm -rf /etc/firstboot.d/state/*
