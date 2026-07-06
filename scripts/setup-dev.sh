#!/usr/bin/env bash
set -euo pipefail

echo "Setting up development environment..."

# Install pre-commit if not present
if ! command -v pre-commit &> /dev/null; then
    echo "Installing pre-commit..."
    pip install pre-commit
fi

# Install UV if not present (required for ASH v3)
if ! command -v uv &> /dev/null; then
    echo "Installing UV..."
    curl -sSf https://astral.sh/uv/install.sh | sh
fi

# Install git hooks
pre-commit install
echo "Pre-commit hooks installed — ASH will scan on every commit."

# Validate ASH config
if command -v ash &> /dev/null; then
    ash config validate && echo "✅ ASH configuration valid."
fi

echo ""
echo "Setup complete! Security scanning is now enforced on commits."
