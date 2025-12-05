#!/bin/bash

# Check if jdtls is installed and available in PATH

if command -v jdtls &> /dev/null; then
    exit 0
fi

# Check if brew is available (macOS)
if command -v brew &> /dev/null; then
    echo "[jdtls] Installing jdtls via Homebrew..."
    brew install jdtls

    if command -v jdtls &> /dev/null; then
        echo "[jdtls] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[jdtls] jdtls is not installed."
echo "          Install: brew install jdtls"
echo "          Note: Requires Java 21+ runtime"

exit 0
