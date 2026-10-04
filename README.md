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

# Install macos-notifications (after its first release is published)
brew install cs50victor/tap/macos-notifications

# Install Taffy (Apple Silicon, macOS 14+)
brew install --cask cs50victor/tap/taffy
```

## Packages

### Formulae

- `tokenproxy` — Small, fast Rust proxy for OpenAI-compatible agent traffic
- `mcpx` — Lightweight CLI for interacting with MCP (Model Context Protocol) servers
- `tracer` — Terminal code walkthrough and review tools for engineers and AI agents

- `macos-notifications` — Local archive and terminal browser for captured macOS notifications; source build, no automatic background capture

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

The `macos-notifications` formula uses a verified source release archive and Go build. Update its version, URL and source SHA256 directly; the binary-asset updater above does not apply.

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
```

## Notes

- Run `brew info cs50victor/tap/<name>` for per-tool caveats.
