#!/bin/bash
set -e

echo "Installing Claude Code..."

# Install Claude Code CLI
curl -fsSL https://cli.anthropic.com/install.sh | bash

# Add Claude to PATH for the current session
export PATH="$HOME/.local/bin:$PATH"

# Ensure Claude is in PATH for future sessions
if ! grep -q '.local/bin' ~/.bashrc; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

if ! grep -q '.local/bin' ~/.zshrc 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
fi

echo "Claude Code installation completed!"
