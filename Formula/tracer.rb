class Tracer < Formula
  desc "Terminal code walkthrough and review tools for engineers and AI agents"
  homepage "https://github.com/cs50victor/tracer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v#{version}/tracer_#{version}_darwin_arm64.tar.gz"
      sha256 "abde1b5c7311638e69cdd3bac040e82626b8bd05aae558c2c50026e71bbff862"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v#{version}/tracer_#{version}_darwin_amd64.tar.gz"
      sha256 "bb0f84bf6807fd5b51f14bf612854513620d8a038b312da349ad387c886a935c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v#{version}/tracer_#{version}_linux_arm64.tar.gz"
      sha256 "39c852b4bdd111a4423bbc3a5ae6c1b99d55f694697f10d62369f5ed528210d5"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v#{version}/tracer_#{version}_linux_amd64.tar.gz"
      sha256 "24dcbc5fb0d18ce6a332510419ae49886a9a37d3cd1eec10d571102a280414c4"
    end
  end

  def install
    bin.install "tracer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracer --version")
  end
end
