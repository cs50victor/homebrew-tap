class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.4/mainroom_0.1.4_darwin_arm64.tar.gz"
      sha256 "f3e30312aec4f737c0b8d3b0c222ff914315fa81fbc869901e4ad9b6f6e9f695"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.4/mainroom_0.1.4_darwin_amd64.tar.gz"
      sha256 "46b0ed0c3e82e388559b704354a313dc4523d11ffb6140ffa1fb62c781cbc1bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.4/mainroom_0.1.4_linux_arm64.tar.gz"
      sha256 "f86f561f6583137c6d0d5b83ab19d08c98b7df98f2dd3cf9fc98cc54830082a7"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.4/mainroom_0.1.4_linux_amd64.tar.gz"
      sha256 "361e9fccecaccc8876f7f3c0f82a351e41d63978f3b09099e15650d7a2b35d9c"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
