# Besu private txs example

Example of a network with 3 Besu nodes ready to use private transactions. It contains:
* [Orion](https://github.com/PegaSysEng/orion)
* [Besu](https://github.com/hyperledger/besu/)
* [EthSigner](https://github.com/PegaSysEng/ethsigner)

## How to use
* Execute `docker-compose up` to start the services
* Run `./send-private-tx.sh` to send a private transaction. This command will output the hash of the private tx
* Run `./get-private-tx.sh <HASH>` to get the the private transaction details
* See the examples for other requests

**Example:**

```
$ ./send-private-tx.sh
>>
{
  "jsonrpc" : "2.0",
  "id" : 1,
  "result" : "0x1b628d80b8f3db873adea6a2f7a775a62c83d4381ad4f19d7ba87fb05472630c"
}

$ ./get-private-tx.sh 0x1b628d80b8f3db873adea6a2f7a775a62c83d4381ad4f19d7ba87fb05472630c
>>
{
  "jsonrpc" : "2.0",
  "id" : 1,
  "result" : {
    "from" : "0xfe3b557e8fb62b89f4916b721be55ceb828dbd73",
    "gas" : "0x15f90",
    "gasPrice" : "0x0",
    "hash" : "0xbab7f61c4a14942ed8eefd3543a4a197b946f6787faba6e409985ff764b709c7",
    "input" : "0x608060405234801561001057600080fd5b5060dc8061001f6000396000f3006080604052600436106049576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680633fa4f24514604e57806355241077146076575b600080fd5b348015605957600080fd5b50606060a0565b6040518082815260200191505060405180910390f35b348015608157600080fd5b50609e6004803603810190808035906020019092919050505060a6565b005b60005481565b80600081905550505600a165627a7a723058202bdbba2e694dba8fff33d9d0976df580f57bff0a40e25a46c398f8063b4c00360029",
    "nonce" : "0x5",
    "to" : null,
    "value" : "0x0",
    "v" : "0xfe8",
    "r" : "0xc2a1eb89d18c59c7a1b6ee9da8c70ef0d74f1da550786dccff3240b7ae7f78a6",
    "s" : "0x4f96f9609899b5c3f0ff17a5b167c8769a509a345811e5fb38259e959a764d70",
    "privateFrom" : "GGilEkXLaQ9yhhtbpBT03Me9iYa7U/mWXxrJhnbl1XY=",
    "privateFor" : [ "GGilEkXLaQ9yhhtbpBT03Me9iYa7U/mWXxrJhnbl1XY=" ],
    "restriction" : "restricted"
  }
}

$ ./find-privacy-group.sh
>>
{
  "jsonrpc" : "2.0",
  "id" : 1,
  "result" : [ {
    "privacyGroupId" : "OGD/4dkDZWb4VqgDfElovjYMDAcSiRUiB6fLtFRmugU=",
    "name" : "legacy",
    "description" : "Privacy groups to support the creation of groups by privateFor and privateFrom",
    "type" : "LEGACY",
    "members" : [ "KkOjNLmCI6r+mICrC6l+XuEDjFEzQllaMQMpWLl4y1s=", "GGilEkXLaQ9yhhtbpBT03Me9iYa7U/mWXxrJhnbl1XY=" ]
  } ]
}

$ ./get-transaction-count.sh 0xfe3b557e8fb62b89f4916b721be55ceb828dbd73 OGD/4dkDZWb4VqgDfElovjYMDAcSiRUiB6fLtFRmugU=
>>
{
  "jsonrpc" : "2.0",
  "id" : 1,
  "result" : "0x2"
}

$ ./get-eea-transaction-count.sh
>>
{
  "jsonrpc" : "2.0",
  "id" : 1,
  "result" : "0x2"
}
```