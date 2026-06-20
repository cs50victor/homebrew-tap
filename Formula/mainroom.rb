class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.0/mainroom_0.1.0_darwin_arm64.tar.gz"
      sha256 "c67fe84bb3161a882e92643e34a0045c5f313954ba3c362d58c0d6d3060aa422"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.0/mainroom_0.1.0_darwin_amd64.tar.gz"
      sha256 "c0f7778d3b438302001be432357cf7a5df55ab0aefe2cb96da7a538cbc3602a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.0/mainroom_0.1.0_linux_arm64.tar.gz"
      sha256 "8dd82df463c94dac84beaede4d0a596a96b450cdcb78b568acb8d0c1cb33630b"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.0/mainroom_0.1.0_linux_amd64.tar.gz"
      sha256 "faa44adcff080a80ebfceca0d30aba9134878306190c8cf0e324da545c7b083d"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
