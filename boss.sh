#!/bin/bash

[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

mv vsetkonajlepsie.sh /usr/bin/
mv vsetkonajlepsie.service /etc/systemd/system/

chmod 664 /usr/bin/vsetkonajlepsie.sh
chmod 664 /etc/systemd/system/vsetkonajlepsie.service

systemctl enable /etc/systemd/system/vsetkonajlepsie.service
systemctl start vsetkonajlepsie.service

exit 0
