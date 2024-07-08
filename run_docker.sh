#!/bin/sh
echo "This computers IP addresses are:"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo `ip a | sed -nr "s/\s+inet ([0-9\.]*).*/\1/p" | grep -E --invert-match "^127|^172"`
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo `ipconfig getifaddr en0`
    echo `ipconfig getifaddr en1`
fi

docker compose run  -p 8080:8080 backend /opt/venv/bin/python3 /app/back.py
