#!/bin/bash

curl -X POST \
  http://localhost:9545 \
  -H 'Content-Type: application/json' \
  -d '{
    "jsonrpc": "2.0",
    "method": "priv_getEeaTransactionCount",
    "params": [
        "0xfe3b557e8fb62b89f4916b721be55ceb828dbd73",
        "GGilEkXLaQ9yhhtbpBT03Me9iYa7U/mWXxrJhnbl1XY=",
        [
            "KkOjNLmCI6r+mICrC6l+XuEDjFEzQllaMQMpWLl4y1s="
        ]
    ],
    "id": 1
}'