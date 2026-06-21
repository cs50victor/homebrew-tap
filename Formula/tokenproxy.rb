class Tokenproxy < Formula
  desc "Small, fast Rust proxy for OpenAI-compatible agent traffic"
  homepage "https://github.com/cs50victor/tokenproxy"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fd6907dccd7f644b27aeeaf777bdd5197cbd4631cec5969e0d80546d65ed974e"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ebe7507cd7766fed10b67240e77af5a476c029a836788886ff092849d1cb1e9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "101ce1289073784665a55f15423a3b8b8ba07527cb59eef2293ece9fe7e4ed8a"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99e91f2664385608c713b3d4902f7c892de46dd0c5cbd1fdeae5c378b3315c64"
    end
  end

  def install
    bin.install "tokenproxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenproxy --version")
  end
end
