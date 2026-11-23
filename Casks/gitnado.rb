# Rendered by .github/workflows/publish-packages.yml on each release and
# pushed to the hegsie/homebrew-gitnado tap as Casks/gitnado.rb.
cask "gitnado" do
  version "1.1.5"
  sha256 "093d55e6d36ec2ad19da7e15bb39ccd34067d57f37d61ad7d2a61eb5ceaaff29"

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

  zap trash: [
    "~/Library/Application Support/io.github.hegsie.gitnado",
    "~/Library/Caches/io.github.hegsie.gitnado",
    "~/Library/Preferences/io.github.hegsie.gitnado.plist",
    "~/Library/Saved Application State/io.github.hegsie.gitnado.savedState",
    "~/Library/WebKit/io.github.hegsie.gitnado",
  ]
end
