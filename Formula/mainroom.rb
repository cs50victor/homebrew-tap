class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.1/mainroom_0.1.1_darwin_arm64.tar.gz"
      sha256 "dc2ac5222c92d35e38e2ae2092271fb3500d04a2e9cac00bb804ed1d6bcd70df"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.1/mainroom_0.1.1_darwin_amd64.tar.gz"
      sha256 "37ea159f222717afb6a3d5f0b50893dafdf8885bbb61174f135481b20be31843"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.1/mainroom_0.1.1_linux_arm64.tar.gz"
      sha256 "e49fe636a86caa21a66b678da4e9356cf338edadee308848902cca13ea0f98fb"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.1/mainroom_0.1.1_linux_amd64.tar.gz"
      sha256 "4994478e2f3491fbceb572eb0f35d38aeef46e1ddabe51b3c8db8525fbb583e2"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
