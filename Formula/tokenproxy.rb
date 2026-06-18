class Tokenproxy < Formula
  desc "Small, fast Rust proxy for OpenAI-compatible agent traffic"
  homepage "https://github.com/cs50victor/tokenproxy"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fc66a780cb29d9a32e5be09405443db50604b9a28974f2bfa419d68aac907743"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "55cba3a22428d77234b1462de8fd438da794d85da5ec8100405e016863ca9f29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b261a484781812c108ba80bbfca35d882dc0a307d90e1b62c62d80747462792b"
    end
    on_intel do
      url "https://github.com/cs50victor/tokenproxy/releases/download/v#{version}/tokenproxy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3ae2007397e3a695196005bb7d3d26c2020f991791e12b5b5e932525d82060f"
    end
  end

  def install
    bin.install "tokenproxy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenproxy --version")
  end
end
