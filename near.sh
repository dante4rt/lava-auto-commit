#!/bin/bash

RPC_URL="https://near.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/"

near_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"block","id":"HappyCuanAirdrop","params":{"finality":"final"}}' "$RPC_URL")

if [ $? -eq 0 ]; then
    echo "$near_data" >> near.txt
    echo "NEAR data fetched and saved to near.txt."
else
    echo "Failed to fetch NEAR data."
fi
