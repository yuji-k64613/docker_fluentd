#!/bin/bash
grep '^trap' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
cat << EOF >> ~/.bashrc
trap 'exit 0' TERM
EOF
fi
exec /home/elasticsearch/elasticsearch-2.4.1/bin/elasticsearch
