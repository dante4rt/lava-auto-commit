#!/bin/bash

# Perform POST request to fetch StarkNet data
starknet_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"starknet_blockNumber"}' https://rpc.starknet.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/)

# Append the output to a file named starknet.txt
echo "$starknet_data" >> starknet.txt

# Display a message
echo "StarkNet data fetched and saved to starknet.txt."
