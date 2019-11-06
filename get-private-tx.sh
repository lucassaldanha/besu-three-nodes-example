#!/bin/bash
hash=$1

data() {
cat <<EOF
{"jsonrpc":"2.0","method":"priv_getPrivateTransaction","params":["$hash"], "id":1}
EOF
}

curl -X POST --data "$(data)" http://127.0.0.1:8515