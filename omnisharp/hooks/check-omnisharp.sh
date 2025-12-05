#!/bin/bash

# Check if OmniSharp is installed and available in PATH

if command -v OmniSharp &> /dev/null; then
    exit 0
fi

# Check if brew is available (macOS)
if command -v brew &> /dev/null; then
    echo "[omnisharp] Installing OmniSharp via Homebrew..."
    brew install omnisharp/omnisharp-roslyn/omnisharp-mono

    if command -v OmniSharp &> /dev/null; then
        echo "[omnisharp] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[omnisharp] OmniSharp is not installed."
echo "          Install: brew install omnisharp/omnisharp-roslyn/omnisharp-mono"
echo "          Or: dotnet tool install -g csharp-ls"

exit 0
