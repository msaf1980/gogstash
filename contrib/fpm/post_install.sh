#!/usr/bin/env bash
/usr/bin/getent group gogstash || /usr/sbin/groupadd -r gogstash >/dev/null
/usr/bin/getent passwd gogstash || /usr/sbin/useradd -d /tmp -M -s /bin/false --system -g gogstash gogstash >/dev/null
[[ -e /bin/systemctl ]] && /bin/systemctl daemon-reload ||:
