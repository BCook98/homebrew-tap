cask "trill" do
  arch arm: "arm64", intel: "amd64"

  version "2026.10.25,23"
  sha256 arm:   "545cd8360225e322119b2728ae752ae5efa24812960a68046a80dbedd54bab47",
         intel: "52f0e7b2b2e7d521d21a78d636deb3e18589cbb4b987a2aca5269d1bea7bf3d9"

  url "https://github.com/BCook98/trill/releases/download/v2026.10.25-build.4f687db84ca8/trill-companion-#{version.csv.first}-darwin-#{arch}.zip"
  name "Trill Companion"
  desc "Secure access to terminal sessions from your phone"
  homepage "https://trill.bcook.io/"

  livecheck do
    skip "Updated from the signed release manifest"
  end

  depends_on formula: %w[mosh tmux]
  depends_on macos: :monterey

  binary "trill"
  binary "trilld"

  caveats <<~EOS
    Run trill setup to configure this Mac and pair your iPhone.
    Use trill doctor to check the installation.

    After upgrading, run trill stop and trill start with your usual --state-dir
    to load the new daemon. This disconnects phone terminals; provider sessions
    and paired devices are preserved.

    Before removing this cask, run trill uninstall with your usual --state-dir
    to remove its owned LaunchAgents. Configuration and pairings are retained.
  EOS
end
