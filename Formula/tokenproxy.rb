class Tokenproxy < Formula
  desc "Small, fast Rust proxy for OpenAI-compatible agent traffic"
  homepage "https://github.com/cs50victor/tokenproxy"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "095be20556a6967577567b8ebeb63a7e88c88eb8f9fe2fc3fad4e37b83982e72"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dfad4b49d0e92eb533b1dffc811d609ec5a8ddf083be9302c633f282fde2f7cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abe020e3b041af8b1077f951c9becc3be11f9a1fb515188cc35545f38148a1a5"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e858425e8c1451cb6016b97494fef16568a1ec184c9db0342d83a0d98086978"
    end
  end

  def install
    bin.install "tokenproxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenproxy --version")
  end
end
