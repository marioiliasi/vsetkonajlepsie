#!/bin/bash

[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

mv vsetkonajlepsie.sh /usr/bin/
mv vsetkonajlepsie.service /etc/systemd/system/

systemctl enable /etc/systemd/system/vsetkonajlepsie.service
systemctl start vsetkonajlepsie.service

exit 0
