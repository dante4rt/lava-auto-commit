#!/bin/bash

# Perform POST request to fetch StarkNet data
starknet_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"starknet_blockNumber"}' https://your-starknet-rpc-url.com)

# Append the output to a file named starknet.txt
echo "$starknet_data" >> starknet.txt

# Display a message
echo "StarkNet data fetched and saved to starknet.txt."
