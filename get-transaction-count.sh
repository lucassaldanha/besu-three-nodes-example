#!/bin/bash
address=$1
privacyGroupId=$2

data() {
cat <<EOF
{"jsonrpc":"2.0","method":"priv_getTransactionCount","params":["$address", "$privacyGroupId"], "id":1}
EOF
}

curl -X POST --data "$(data)" http://127.0.0.1:8515