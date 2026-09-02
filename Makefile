.DEFAULT_GOAL := help

.PHONY: help install-tools fmt fmt-check lint build test doc-test check

help: ## Show available commands.
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "%-16s %s\n", $$1, $$2}'

install-tools: ## Install local development tools.
	cargo install cargo-nextest --locked
	cargo install taplo-cli --locked

fmt: ## Format Rust and TOML files.
	taplo format
	cargo fmt --all

fmt-check: ## Check Rust and TOML formatting.
	taplo format --check
	cargo fmt --all -- --check

lint: ## Lint all workspace targets.
	cargo clippy --workspace --all-targets --all-features -- -D warnings

build: ## Build all workspace targets.
	cargo build --workspace --all-targets --all-features

test: ## Run unit and integration tests with Nextest.
	cargo nextest run --workspace --all-features

doc-test: ## Run documentation tests.
	cargo test --doc --workspace --all-features

check: fmt-check lint build test doc-test ## Run all local quality checks.
