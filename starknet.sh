#!/bin/bash

RPC_URL="https://rpc.starknet.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/"

starknet_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"starknet_blockNumber"}' "$RPC_URL")

if [ $? -eq 0 ]; then
    echo "$starknet_data" >> starknet.txt
    echo "StarkNet data fetched and saved to starknet.txt."
else
    echo "Failed to fetch StarkNet data."
fi
