class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.2/mainroom_0.1.2_darwin_arm64.tar.gz"
      sha256 "beaad36f4593bc0c032e6f1a4aa30ee00c65409c1e1bf24dfaaf39aafac541ec"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.2/mainroom_0.1.2_darwin_amd64.tar.gz"
      sha256 "a47d4a306c3cd082b73fa4cc50859a384f7f971a6782f1fd1602dea84d9bb822"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.2/mainroom_0.1.2_linux_arm64.tar.gz"
      sha256 "71f6bd1193ac8bbb4d48e2ba6c4b3fd433acfeefb88399586385f5833694321b"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.2/mainroom_0.1.2_linux_amd64.tar.gz"
      sha256 "abbed3dd5b9db4ade91265344566d466ba5ccf7caed7b6ded168e51b200de7fc"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
