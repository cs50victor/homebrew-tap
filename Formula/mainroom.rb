class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.3/mainroom_0.1.3_darwin_arm64.tar.gz"
      sha256 "a35377d16f55f981bb65ce4d5d7804a92b4ecfb574225ed9275348593b483038"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.3/mainroom_0.1.3_darwin_amd64.tar.gz"
      sha256 "73a9eb158b718f453e5a4de479077f6a29678dac66b6fc8a45d61a1c7a283514"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.3/mainroom_0.1.3_linux_arm64.tar.gz"
      sha256 "222888d3edad8b36b50f426f211cd7ab513287965acf91f4a7b6f93d77d2a68f"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.3/mainroom_0.1.3_linux_amd64.tar.gz"
      sha256 "4cff14f833931752ca0211ea054eae0e72c073bf216cffc252f3dc4f1a65e7c9"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
