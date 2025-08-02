#!/bin/bash

sleep 15
conky -c /home/toadie/.config/conky/conky.conf -q -d &

sleep 5
conky -c /home/toadie/.config/conky/conky_backup_vm.conf -q -d &
