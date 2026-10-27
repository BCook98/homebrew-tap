cask "trill" do
  arch arm: "arm64", intel: "amd64"

  version "2026.10.25,25"
  sha256 arm:   "08df08940d7bf11b4739389815d7a661969d68dec1c20fcd5edc815c2e93d6f7",
         intel: "9be41319c940ff9fe3b9f5231f2fce2c7606de9c7892653978c83441f831f466"

  url "https://github.com/BCook98/trill/releases/download/v2026.10.25-build.9aeb60b8e325/trill-companion-#{version.csv.first}-darwin-#{arch}.zip"
  name "Trill Companion"
  desc "Secure access to terminal sessions from your phone"
  homepage "https://trill.bcook.io/"

  livecheck do
    skip "Updated from the signed release manifest"
  end

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
