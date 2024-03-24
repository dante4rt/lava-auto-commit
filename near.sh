#!/bin/bash

# Perform POST request to fetch NEAR data
near_data=$(curl -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"block","id":"HappyCuanAirdrop","params":{"finality":"final"}}' https://near.lava.build/lava-referer-8b51600b-b3cc-4893-89ec-5de41f0724db/)

# Append the output to a file named near.txt
echo "$near_data" >> near.txt

# Display a message
echo "NEAR data fetched and saved to near.txt."
