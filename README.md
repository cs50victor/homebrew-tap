# cs50victor's Homebrew Tap

Homebrew tap for cs50victor's tools and macOS apps.

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

# Install tracer
brew install cs50victor/tap/tracer

# Install Taffy (Apple Silicon, macOS 14+)
brew install --cask cs50victor/tap/taffy
```

## Packages

### Formulae

- `tokenproxy` — Small, fast Rust proxy for OpenAI-compatible agent traffic
- `mcpx` — Lightweight CLI for interacting with MCP (Model Context Protocol) servers
- `tracer` — Terminal code walkthrough and review tools for engineers and AI agents

### Casks

- `taffy`: Immersive multimodal multiplexer for macOS, with a bundled `taffy` CLI

Taffy is ad-hoc signed without Apple notarization. If macOS blocks launch, run
`xattr -dr com.apple.quarantine /Applications/Taffy.app`.

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
