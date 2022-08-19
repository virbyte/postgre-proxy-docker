#!/bin/sh

# start SSH agent and load key
source agent-start postgre-proxy
echo "$REMOTE_KEY" | SSH_PASS="$REMOTE_KEY_PASS" agent-add

# turn on strict errors
set -eu

username=${REMOTE_USER:-$(id -u -n)}

# open a connection on $postgre_port on 127.0.0.1 to the same port on POSTGRE_HOST via REMOTE_HOST
sh -c "ssh -o StrictHostKeyChecking=no -N -L 0.0.0.0:${POSTGRE_PORT:-5432}:${POSTGRE_HOST:-127.0.0.1}:${POSTGRE_PORT:-5432} -p ${REMOTE_PORT:-22} ${username}@$REMOTE_HOST"