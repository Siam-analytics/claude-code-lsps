#!/bin/bash

# Check if rust-analyzer is installed and available in PATH

if command -v rust-analyzer &> /dev/null; then
    exit 0
fi

# Check if brew is available (macOS)
if command -v brew &> /dev/null; then
    echo "[rust-analyzer] Installing rust-analyzer via Homebrew..."
    brew install rust-analyzer

    if command -v rust-analyzer &> /dev/null; then
        echo "[rust-analyzer] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[rust-analyzer] rust-analyzer is not installed."
echo "          Install: brew install rust-analyzer"
echo "          Or: rustup component add rust-analyzer"

exit 0
