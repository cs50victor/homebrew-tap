cask "taffy" do
  version "0.1.1"
  sha256 "1369d723654721bf82664a7464565af601dfe018bb8c25121446309a4bcf920a"

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
