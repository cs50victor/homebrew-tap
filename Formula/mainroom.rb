class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/mainroom/releases/download/v#{version}/mainroom_#{version}_darwin_arm64.tar.gz"
      sha256 "477a0d08d04d20167287f25b56d659cea78aedc13d0063ad021163b237e6ee36"
    else
      url "https://github.com/cs50victor/mainroom/releases/download/v#{version}/mainroom_#{version}_darwin_amd64.tar.gz"
      sha256 "408cbe6000e2032552c90d9f1148e391fb7e08fffdb96138ab993594e525366a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cs50victor/mainroom/releases/download/v#{version}/mainroom_#{version}_linux_arm64.tar.gz"
      sha256 "6ceb79a55afa56fed48c37f80a14dc2c63d53f53136632355a278bb4805b974c"
    else
      url "https://github.com/cs50victor/mainroom/releases/download/v#{version}/mainroom_#{version}_linux_amd64.tar.gz"
      sha256 "86c934db99ddb393c1f9532e188246c4c91cc9f4e3fb90641e7467d3e1f90630"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
