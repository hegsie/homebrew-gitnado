# Rendered by .github/workflows/publish-packages.yml on each release and
# pushed to the hegsie/homebrew-gitnado tap as Casks/gitnado.rb.
cask "gitnado" do
  version "1.1.3"
  sha256 "667a9baac7dd1fad35fb92bd12e4359542da740c5a8c23de51388593458c1c69"

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
