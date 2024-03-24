#!/bin/bash

# Perform POST request to fetch Ethereum data
eth_data=$(curl -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","id":1}' https://eth1.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/)

# Append the output to a file named ethereum.txt
echo "$eth_data" >> ethereum.txt

# Display a message
echo "Ethereum data fetched and saved to ethereum.txt."
