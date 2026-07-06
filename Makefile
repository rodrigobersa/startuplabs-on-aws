.PHONY: setup install-hooks lint scan

# First command after clone
setup: install-hooks
	@echo "Development environment ready. ASH will scan on every commit."

install-hooks:
	@command -v pre-commit >/dev/null 2>&1 || pip install pre-commit
	pre-commit install
	@echo "Pre-commit hooks installed."

# Manual full scan
scan:
	ash --config .ash/.ash.yaml

# Validate ASH configuration
validate-config:
	ash config validate
