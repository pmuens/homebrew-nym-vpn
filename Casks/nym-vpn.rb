cask "nym-vpn" do
  version "2.7.1"
  sha256 "761e1942aac0d4aed016ffcba4c9a31b3c77d11ef8ec1355df95731fef42d375"

  name "NymVPN"
  desc "The world's most private VPN"
  url "https://github.com/nymtech/nym-vpn-client/releases/download/nym-vpn-macOS-v#{version}/NymVPN.dmg"

  auto_updates true

  homepage "https://nym.com"

  app "NymVPN.app"

  zap trash: [
    "~/Library/Caches/net/nymtech.vpn",
    "~/Library/Preferences/net.nymtech.vpn.plist"
    "~/Library/Application Support/net.nymtech.vpn",
  ]
end
