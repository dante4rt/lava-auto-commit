#!/bin/bash

# Perform POST request to fetch Ethereum data
eth_data=$(curl -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","params":["latest", false],"id":1}' https://YOUR_ETH_LAVA_URL)

# Append the output to a file named ethereum.txt
echo "$eth_data" >> ethereum.txt

# Display a message
echo "Ethereum data fetched and saved to ethereum.txt."
