#!/bin/bash

# Check if vscode-html-language-server is installed and available in PATH

if command -v vscode-html-language-server &> /dev/null; then
    exit 0
fi

# Check if npm is available
if command -v npm &> /dev/null; then
    echo "[vscode-html-css] Installing vscode-langservers-extracted via npm..."
    npm install -g vscode-langservers-extracted

    if command -v vscode-html-language-server &> /dev/null; then
        echo "[vscode-html-css] Installed successfully"
        exit 0
    fi
fi

# Manual instructions
echo "[vscode-html-css] vscode-langservers-extracted is not installed."
echo "          Install: npm install -g vscode-langservers-extracted"

exit 0
