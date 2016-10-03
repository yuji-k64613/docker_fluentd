#!/bin/bash
grep '^trap' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
cat << EOF >> ~/.bashrc
trap '/etc/init.d/apache2 stop; exit 0' TERM
EOF
fi
/etc/init.d/apache2 start
exec tail -f /dev/null
