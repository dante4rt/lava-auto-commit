#!/bin/bash

# Perform POST request to fetch Axelar data
axelar_data=$(curl -s -H "Content-Type: application/json" -X POST --data '{"jsonrpc":"2.0","id":"1","method":"status"}' https://tm.axelar.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/)

# Append the output to a file named axelar.txt
echo "$axelar_data" >> axelar.txt

# Display a message
echo "Axelar data fetched and saved to axelar.txt."
