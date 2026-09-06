class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.6/mainroom_0.1.6_darwin_arm64.tar.gz"
      sha256 "956fcf81976305719c555eb7347e060a25ab4d3dc21d0b199fe947c251f7390a"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.6/mainroom_0.1.6_darwin_amd64.tar.gz"
      sha256 "27dedc8fe5c38c7f84d8f02f1199a9956f722092640e05b4dab7915793ded4e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.6/mainroom_0.1.6_linux_arm64.tar.gz"
      sha256 "dcc1a1cc9e1f6599c76da9ec6c85f2e9bef66d1e36458935f100f04a6bdd1db6"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.6/mainroom_0.1.6_linux_amd64.tar.gz"
      sha256 "0208e04642d3f387c188f361182dd9223499e062976a842c68b4cb4e96afa5ed"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
