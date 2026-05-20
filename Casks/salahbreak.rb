cask "salahbreak" do
  version "1.0.0"
  sha256 "128b6870a4ad64bf61f4135fa61db5abb921bba5fc67bdb595fe8f42101bc926"

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
