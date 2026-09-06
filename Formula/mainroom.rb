class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.5/mainroom_0.1.5_darwin_arm64.tar.gz"
      sha256 "d43beab74eb3d4160eca4829e598c58007e27c974aeb83e9c84a9daffa018ad3"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.5/mainroom_0.1.5_darwin_amd64.tar.gz"
      sha256 "d6c27417e46db86ec5c4c4e0506e5096a9b77608c33f1debb18620ea1f9d354c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.5/mainroom_0.1.5_linux_arm64.tar.gz"
      sha256 "3c34337b895c2b235efb8609a4e0849b21ea1438803ef3c53e9c500714a04dcc"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.5/mainroom_0.1.5_linux_amd64.tar.gz"
      sha256 "7e04d07f2496e71ff846262352e19feb5190d0912c288c2f4b6bb18c236b3f88"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
