#!/bin/bash

RPC_URL="https://eth1.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/"

eth_data=$(curl -s -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","id":1}' "$RPC_URL")

if [ $? -eq 0 ]; then
    echo "$eth_data" >> ethereum.txt
    echo "Ethereum data fetched and saved to ethereum.txt."
else
    echo "Failed to fetch Ethereum data."
fi
