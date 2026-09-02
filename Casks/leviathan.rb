# Rendered by .github/workflows/publish-packages.yml on each release and
# pushed to the hegsie/homebrew-leviathan tap as Casks/leviathan.rb.
cask "leviathan" do
  version "0.8.0"
  sha256 "df2332d7e23c37089232414fa4ead5fee09283446d312dd20d1f2e4f7be3de37"

  url "https://github.com/hegsie/Leviathan/releases/download/v#{version}/Leviathan_#{version}_aarch64.dmg"
  name "Leviathan"
  desc "Fast, privacy-first Git GUI client"
  homepage "https://github.com/hegsie/Leviathan"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Leviathan.app"

  zap trash: [
    "~/Library/Application Support/io.github.hegsie.leviathan",
    "~/Library/Caches/io.github.hegsie.leviathan",
    "~/Library/Preferences/io.github.hegsie.leviathan.plist",
    "~/Library/Saved Application State/io.github.hegsie.leviathan.savedState",
    "~/Library/WebKit/io.github.hegsie.leviathan",
  ]
end
