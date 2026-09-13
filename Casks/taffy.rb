cask "taffy" do
  version "0.1.0"
  sha256 "9db0e3cc7ecd2c3f1feeffa2f4667a7da0ab0ce5a319f9899184a7529873d0fa"

  url "https://github.com/cs50victor/taffy/releases/download/v#{version}/taffy-#{version}-macos-arm64.zip"
  name "Taffy"
  desc "Immersive multimodal multiplexer"
  homepage "https://github.com/cs50victor/taffy"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Taffy.app"
  binary "#{appdir}/Taffy.app/Contents/Resources/bin/taffy"

  caveats <<~EOS
    Taffy is ad-hoc signed and is not notarized by Apple.
    If macOS blocks it, run:
      xattr -dr com.apple.quarantine "#{appdir}/Taffy.app"

    Update Taffy with Homebrew. The Cloud tunnel extension is not included.
  EOS
end
