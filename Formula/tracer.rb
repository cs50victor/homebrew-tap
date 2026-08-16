class Tracer < Formula
  desc "Terminal code walkthrough and review tools for engineers and AI agents"
  homepage "https://github.com/cs50victor/tracer"
  license "MIT"

  depends_on "bat"
  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.1/tracer_0.1.1_darwin_arm64.tar.gz"
      sha256 "cedfda421cfbb37aeeab5af115f88d6b1abb819ac2f5d86ee08cf38dc525b19c"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.1/tracer_0.1.1_darwin_amd64.tar.gz"
      sha256 "1899c39d40884b5224f9ce9bbd29f502c2fe199f1a6a40f5fcb518d7333bbc66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.1/tracer_0.1.1_linux_arm64.tar.gz"
      sha256 "94fc89cad6166e0e739ff25b4f7ee75e95b917e35296073b198fbe2632c30830"
    else
      url "https://github.com/cs50victor/tracer/releases/download/v0.1.1/tracer_0.1.1_linux_amd64.tar.gz"
      sha256 "3ce90881d9ed31285c9877b076579821bb542c166519d9a87b42b60a53be3d83"
    end
  end

  def install
    bin.install "tracer"
  end

  def caveats
    <<~EOS
      Code previews require Ghostty. On macOS, install it with:
        brew install --cask ghostty
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracer --version")
  end
end
