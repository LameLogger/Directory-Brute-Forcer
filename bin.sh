#!/bin/bash

# Directory Brute Forcer - Basic Bash Version

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check arguments
if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <url> <wordlist> [status_code_to_show]"
    echo "Example: $0 https://example.com wordlist.txt 200"
    exit 1
fi

URL=$1
WORDLIST=$2
FILTER_CODE=$3

# Loop through wordlist
while read -r DIR; do
    TARGET="$URL/$DIR"
    STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$TARGET")

    # Show only matching status code if specified
    if [[ -n "$FILTER_CODE" ]]; then
        if [[ "$STATUS_CODE" == "$FILTER_CODE" ]]; then
            echo -e "${GREEN}[+] $STATUS_CODE Found: $TARGET${NC}"
        fi
    else
        echo -e "[*] $STATUS_CODE => $TARGET"
    fi

done < "$WORDLIST"
