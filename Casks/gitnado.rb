# Rendered by .github/workflows/publish-packages.yml on each release and
# pushed to the hegsie/homebrew-gitnado tap as Casks/gitnado.rb.
cask "gitnado" do
  version "0.9.1"
  sha256 "d4a0c2e3d1cf2e32cc067028b5992082e187a69ac6eee3d926605cd7c850a43b"

  url "https://github.com/hegsie/gitnado/releases/download/v#{version}/Gitnado_#{version}_aarch64.dmg"
  name "Gitnado"
  desc "Fast, privacy-first Git GUI client"
  homepage "https://gitnado.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Gitnado.app"

  # The io.github.hegsie.leviathan entries are from before the 0.9.0 rename.
  zap trash: [
    "~/Library/Application Support/io.github.hegsie.gitnado",
    "~/Library/Application Support/io.github.hegsie.leviathan",
    "~/Library/Caches/io.github.hegsie.gitnado",
    "~/Library/Caches/io.github.hegsie.leviathan",
    "~/Library/Preferences/io.github.hegsie.gitnado.plist",
    "~/Library/Preferences/io.github.hegsie.leviathan.plist",
    "~/Library/Saved Application State/io.github.hegsie.gitnado.savedState",
    "~/Library/Saved Application State/io.github.hegsie.leviathan.savedState",
    "~/Library/WebKit/io.github.hegsie.gitnado",
    "~/Library/WebKit/io.github.hegsie.leviathan",
  ]
end
