# cs50victor's Homebrew Tap

Homebrew tap for cs50victor's CLI tools.

## Install

```bash
brew tap cs50victor/tap
```

## Install Packages

```bash
# Install tokenproxy
brew install cs50victor/tap/tokenproxy

# Install mcpx
brew install cs50victor/tap/mcpx
```

## Packages

### Formulae

- `tokenproxy` — Small, fast Rust proxy for OpenAI-compatible agent traffic
- `mcpx` — Lightweight CLI for interacting with MCP (Model Context Protocol) servers

## Updating Formulae

Run the `Update Formula` workflow with:

- `formula`: formula name, e.g. `tokenproxy`
- `tag`: release tag, e.g. `v0.1.4`
- `repository`: source repository, e.g. `cs50victor/tokenproxy`
- `artifact_template`: release asset template, e.g. `tokenproxy-v{version}-{target}.tar.gz`

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
```

## Notes

- Run `brew info cs50victor/tap/<name>` for per-tool caveats.
