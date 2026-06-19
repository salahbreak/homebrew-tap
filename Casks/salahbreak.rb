cask "salahbreak" do
  version "1.1.0"
  sha256 "5b64c5a20c59316e8609761f875e3c8e69ab811b1704abaaa0c438705b5f32ba"

  url "https://github.com/salahbreak/salahbreak/releases/download/v#{version}/SalahBreak-#{version}.dmg",
      verified: "github.com/salahbreak/"
  name "SalahBreak"
  desc "Menu-bar prayer times and Qibla, computed locally"
  homepage "https://salahbreak.com/"

  # Sandbox + hardened-runtime app built with the same target as the
  # Mac App Store release. Brew users get the Developer-ID notarized
  # build off GitHub Releases; the MAS build is identical except for
  # the provisioning profile.
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
