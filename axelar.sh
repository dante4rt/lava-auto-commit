#!/bin/bash

RPC_URL="https://tm.axelar.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/"

axelar_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"status"}' "$RPC_URL")

if [ $? -eq 0 ]; then
    echo "$axelar_data" >> axelar.txt
    echo "Axelar data fetched and saved to axelar.txt."
else
    echo "Failed to fetch Axelar data."
fi
