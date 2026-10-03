class Tokenproxy < Formula
  desc "Small, fast Rust proxy for OpenAI-compatible agent traffic"
  homepage "https://github.com/cs50victor/tokenproxy"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5dc6e9cd7a464f7c89e1b77962113dba09530b97759a63f541cfb4eb9cee665d"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1e00c318d7fca4a206948bded32f6c73ddde84592885035c1675d11c86ee7bc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ec67a0a30eff542a41c1b19fa1a9188bf5fb44e79f34ee46a3eac431f9f9420"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab236c658900afe56657c7d7c1bbe00c2e1dbc76581b6c5354dae2f3f2dc61c8"
    end
  end

  def install
    bin.install "tokenproxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenproxy --version")
  end
end
