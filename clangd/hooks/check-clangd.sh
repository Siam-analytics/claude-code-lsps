#!/bin/bash

# Check if clangd is installed and available in PATH

if command -v clangd &> /dev/null; then
    exit 0
fi

# Check if brew is available (macOS)
if command -v brew &> /dev/null; then
    echo "[clangd] Installing clangd via Homebrew..."
    brew install llvm

    if command -v clangd &> /dev/null; then
        echo "[clangd] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[clangd] clangd is not installed."
echo "          Install: brew install llvm"

exit 0
