#!/bin/bash
grep '^trap' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
cat << EOF >> ~/.bashrc
trap 'exit 0' TERM
EOF
fi
exec /home/kibana/kibana-4.6.1-linux-x86_64/bin/kibana
