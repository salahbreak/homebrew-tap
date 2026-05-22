cask "salahbreak" do
  version "1.0.0"
  sha256 "bfaa0a127099102fb672f711c22534db6b8c71739a84303ee7df9b3267c01365"

  url "https://github.com/salahbreak/salahbreak/releases/download/v#{version}/SalahBreak-#{version}.dmg",
      verified: "github.com/salahbreak/"
  name "SalahBreak"
  desc "Menu-bar prayer times and Qibla, computed locally"
  homepage "https://salahbreak.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "SalahBreak.app"

  zap trash: [
    "~/Library/Preferences/com.salahbreak.ios.SalahBreakMac.plist",
    "~/Library/Application Support/SalahBreak",
    "~/Library/Caches/com.salahbreak.ios.SalahBreakMac",
    "~/Library/HTTPStorages/com.salahbreak.ios.SalahBreakMac",
  ]
end
