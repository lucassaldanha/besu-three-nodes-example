#!/bin/bash

curl -X POST \
  http://localhost:8515 \
  -H 'Content-Type: application/json' \
  -d '{
  "method": "priv_findPrivacyGroup",
  "id": 1,
  "params": [["GGilEkXLaQ9yhhtbpBT03Me9iYa7U/mWXxrJhnbl1XY=", "KkOjNLmCI6r+mICrC6l+XuEDjFEzQllaMQMpWLl4y1s="]]
}'