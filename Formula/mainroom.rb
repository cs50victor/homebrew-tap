class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.8/mainroom_0.1.8_darwin_arm64.tar.gz"
      sha256 "5143f0f0c6dc889db176ca2b78eeed92ee44880bd080436f214502ced3fd7202"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.8/mainroom_0.1.8_darwin_amd64.tar.gz"
      sha256 "88b167a3f98c4c099976070c25bad1ef2275b0bfb2def0fa3a0fbdbda4f31e78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.8/mainroom_0.1.8_linux_arm64.tar.gz"
      sha256 "50e24a8b694776fca4ed1ddc80ece3ae5a299cabefe5e132638ebb1fe4a8e30e"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.8/mainroom_0.1.8_linux_amd64.tar.gz"
      sha256 "95cdb6556b7387dd91694792a1aa1d56d1bbdca51228b1c7357584f4982f13b7"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
