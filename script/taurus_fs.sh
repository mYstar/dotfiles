#!/bin/bash
ssh s9547231@login.zih.tu-dresden.de -L 7777:taurus.hrsk.tu-dresden.de:22 -N &
sleep 5
sshfs -p 7777 s9547231@127.0.0.1: ~/taurus/
