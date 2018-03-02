#!/bin/bash

ansible client -b -m shell -a 'containers=$(docker ps -q --no-trunc --filter name=rtmp-client); echo "Restarting $(echo "$containers" | wc -l) containers..."; for i in $containers; do docker restart $i; done'