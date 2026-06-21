class Tokenproxy < Formula
  desc "Small, fast Rust proxy for OpenAI-compatible agent traffic"
  homepage "https://github.com/cs50victor/tokenproxy"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8c7e4fdad035e09e28e1928ff5ef7b5429b373f5d70c43839f24b45de9e0ef15"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a0ffdbccb0c0ef5b21fd8196f2c8c26af4147a94f0a4e7821ecbf5c7ee1dc83c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d13bdd49df0a4e1e3286fafd6c1deedec2e4dbbfe2483cb850b4cf99e8287c61"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "504dbfb5c07cdcfa6603357e1dad4a1d22ab76717a9968e76f9cf6cc8da0aca6"
    end
  end

  def install
    bin.install "tokenproxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenproxy --version")
  end
end
