class Tracer < Formula
  desc "Terminal code walkthrough and review tools for engineers and AI agents"
  homepage "https://github.com/cs50victor/tracer"
  license "MIT"

  depends_on "bat"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.2/tracer_0.1.2_darwin_arm64.tar.gz"
      sha256 "95c7047f795de0424868703f6f4a4c23a32b368fc2d66b9c96e4c4dc3d5a38d2"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.2/tracer_0.1.2_darwin_amd64.tar.gz"
      sha256 "8e9fcb90f9f567d4c4d8ba530e8de881db5b3a3e7f5ccd09de77931410035762"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.2/tracer_0.1.2_linux_arm64.tar.gz"
      sha256 "714784bc4306f207d76c7a99987e7c5a8c810bf44b6135a7ba398cc1990099ed"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.2/tracer_0.1.2_linux_amd64.tar.gz"
      sha256 "5223a8200924d46a24f43a3f51c69b5261d5e9f9d51fd2fb4ce220f00fdf3e07"
    end
  end

  def install
    bin.install "tracer"
  end

  def caveats
    <<~EOS
      Code previews use Zed by default. On macOS, install it with:
        brew install --cask zed
      Ghostty is optional for terminal previews.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracer --version")
  end
end
