#!/bin/bash
set -e

echo "Setting up Claude Code configuration..."

# Create Claude config directory if it doesn't exist
mkdir -p ~/.claude

# Copy MCP server configuration
cp /IdeaProjects/chrome-update-tracker/.devcontainer/claude-config.json ~/.claude/claude_desktop_config.json

echo "Claude Code configuration completed!"
echo "MCP servers configured: sequential-thinking, context7"
