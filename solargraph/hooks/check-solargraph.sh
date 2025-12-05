#!/bin/bash

# Check if solargraph is installed and available in PATH

if command -v solargraph &> /dev/null; then
    exit 0
fi

# Check if gem is available
if command -v gem &> /dev/null; then
    echo "[solargraph] Installing solargraph via gem..."
    gem install solargraph

    if command -v solargraph &> /dev/null; then
        echo "[solargraph] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[solargraph] solargraph is not installed."
echo "          Install: gem install solargraph"

exit 0
