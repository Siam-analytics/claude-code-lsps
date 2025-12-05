#!/bin/bash

# Check if kotlin-language-server is installed and available in PATH

if command -v kotlin-language-server &> /dev/null; then
    exit 0
fi

# Check if brew is available (macOS)
if command -v brew &> /dev/null; then
    echo "[kotlin-language-server] Installing kotlin-language-server via Homebrew..."
    brew install kotlin-language-server

    if command -v kotlin-language-server &> /dev/null; then
        echo "[kotlin-language-server] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[kotlin-language-server] kotlin-language-server is not installed."
echo "          Install: brew install kotlin-language-server"

exit 0
