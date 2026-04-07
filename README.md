
# homebrew-tap

Homebrew tap for [raphaelmansuy](https://github.com/raphaelmansuy)'s tools.

## Quick Install

```bash
brew tap raphaelmansuy/tap
```

## Available Formulae

| Formula | Description | Install |
|---------|-------------|---------|
| [`edgecrab`](#edgecrab) | AI-native terminal agent with 74+ tools | `brew install raphaelmansuy/tap/edgecrab` |
| [`edgeparse`](#edgeparse) | High-performance PDF extraction engine (Rust) | `brew install raphaelmansuy/tap/edgeparse` |

---

## EdgeCrab

[EdgeCrab](https://github.com/raphaelmansuy/edgecrab) is a fast, AI-native terminal agent featuring 74+ built-in tools, code execution, real-time reasoning, and integration with 15 messaging gateways (Telegram, Slack, Discord, etc.).

### Install via Homebrew

```bash
brew tap raphaelmansuy/tap
brew install edgecrab
edgecrab --version
```

### Quick Start

```bash
edgecrab                          # Start interactive terminal
edgecrab --help                   # Show all commands
```

---

## EdgeParse (Legacy)

[EdgeParse](https://github.com/raphaelmansuy/edgeparse) is a fast, zero-dependency Rust PDF extraction engine that converts PDFs to Markdown, JSON, HTML, or plain text.

### Install via Homebrew

```bash
brew tap raphaelmansuy/tap
brew install edgeparse
edgeparse --version
```

### Install Agent Skill (Claude Code, Cursor, Windsurf, Codex, and 38+ agents)

```bash
npx skills add raphaelmansuy/run-edgeparse
```

The skill teaches your AI coding agent to use EdgeParse for PDF extraction tasks — parsing, table extraction, bounding boxes, batch conversion, and LLM pipeline integration.

### Quick Start

```bash
edgeparse document.pdf -f markdown -o output/    # Markdown
edgeparse document.pdf -f json -o output/         # JSON with bounding boxes
edgeparse *.pdf -f markdown -o output/ --quiet    # Batch
edgeparse document.pdf --pages "1-5" -f markdown  # Page range
```
