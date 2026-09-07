cask "slimezip" do
  version "0.3.0"
  sha256 "e7dda640de7c5d9895e8733a794ab34486db6f3e63c183c0bbe9f0e6b0b1aa24"

  url "https://github.com/aisyncclub/slimezip/releases/download/v#{version}/SlimeZIP-v#{version}.dmg",
      verified: "github.com/aisyncclub/slimezip/"
  name "SlimeZIP"
  desc "Menu bar organizer that tucks status icons behind one slime"
  homepage "https://aisyncclub.github.io/slimezip/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "SlimeZIP.app"

  uninstall quit: "com.zipbar.ZipBar"

  zap trash: [
    "~/Library/Caches/com.zipbar.ZipBar",
    "~/Library/HTTPStorages/com.zipbar.ZipBar",
    "~/Library/Preferences/com.zipbar.ZipBar.plist",
    "~/Library/Saved Application State/com.zipbar.ZipBar.savedState",
  ]
end
