#!/bin/bash
set -e

echo "Installing Claude Code..."

# Create installation directory
mkdir -p ~/.claude/local
cd ~/.claude/local

# Create package.json
cat > package.json <<EOF
{
  "name": "claude-local",
  "version": "0.0.1",
  "private": true,
  "dependencies": {
    "@anthropic-ai/claude-code": "^2.0.46"
  }
}
EOF

# Install Claude Code
npm install

# Create wrapper script
cat > claude <<'EOF'
#!/bin/bash
exec node ~/.claude/local/node_modules/@anthropic-ai/claude-code/cli.js "$@"
EOF

chmod +x claude

# Create bin directory and symlink
mkdir -p ~/.local/bin
ln -sf ~/.claude/local/claude ~/.local/bin/claude

# Add Claude to PATH for the current session
export PATH="$HOME/.local/bin:$PATH"

# Ensure Claude is in PATH for future sessions
if ! grep -q '.local/bin' ~/.bashrc; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

if ! grep -q '.local/bin' ~/.zshrc 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc 2>/dev/null || true
fi

echo "Claude Code installation completed!"
echo "You can now run 'claude' to start Claude Code"
