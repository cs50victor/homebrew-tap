class Mainroom < Formula
  desc "Mainroom command-line tool"
  homepage "https://github.com/cs50victor/mainroom"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.7/mainroom_0.1.7_darwin_arm64.tar.gz"
      sha256 "4c7afe7a8a4590123d6fd004dc5e6f9eee30e9288f44b772f26de9b5cee8d7a7"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.7/mainroom_0.1.7_darwin_amd64.tar.gz"
      sha256 "68b1cfbaa65e0faf5fa1406ec01f0d21b3a8dff444fc1fe483e43d48476bf269"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.7/mainroom_0.1.7_linux_arm64.tar.gz"
      sha256 "9fdbf43d72ea5b63203ae91b9de6c375a3ed02d94f07ab633dfed4aa7077c616"
    else
      url "https://pub-0f2e7d3d4356465db47f0ff4626ec2a8.r2.dev/mainroom/v0.1.7/mainroom_0.1.7_linux_amd64.tar.gz"
      sha256 "dab7e114d141766c051b54c4151d5c776f327e227325c7d0f96c59e5b44e3c29"
    end
  end

  def install
    bin.install "mainroom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mainroom --version")
  end
end
