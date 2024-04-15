#!/bin/bash

# Check if a stock symbol is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <stock-symbol>"
    exit 1
fi

SYMBOL=$1
API_KEY="AAAAAAAAAAAAAAAA"  # Your Alpha Vantage API key
URL="https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=$SYMBOL&apikey=$API_KEY"

# Fetch the stock data
RESPONSE=$(curl -s "$URL")

# Print the full JSON response for debugging
echo "Full JSON Response:"
echo "$RESPONSE" | jq

# Check if the Global Quote data exists
if [ "$(echo "$RESPONSE" | jq '.["Global Quote"]["01. symbol"]')" != "null" ]; then
    # Parse and display the necessary fields
    echo "open $(echo "$RESPONSE" | jq -r '.["Global Quote"]["02. open"]')"
    echo "high $(echo "$RESPONSE" | jq -r '.["Global Quote"]["03. high"]')"
    echo "low $(echo "$RESPONSE" | jq -r '.["Global Quote"]["04. low"]')"
    echo "latest $(echo "$RESPONSE" | jq -r '.["Global Quote"]["05. price"]')"
    echo "volume $(echo "$RESPONSE" | jq -r '.["Global Quote"]["06. volume"]')"
    echo "asof $(date +'%I:%M %p %Z')"
else
    echo "Failed to retrieve data. Please check the stock symbol and API key."
fi
