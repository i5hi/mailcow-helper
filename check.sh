#!/bin/bash

ss -tlpn | grep -E -w '25|80|110|143|443|465|587|993|995|4190'
# or:
netstat -tulpn | grep -E -w '25|80|110|143|443|465|587|993|995|4190'
# should return nothing

timedatectl status
# enable ntp 
#
sudo timedatectl set-ntp true

vi /etc/systemd/timesyncd.conf
# [Time]
# NTP=0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org
