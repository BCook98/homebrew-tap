# Trill Homebrew tap

Install the signed and notarized Mac companion:

```sh
brew install --cask bcook98/tap/trill
trill setup
trill doctor
```

The cask installs Mosh and tmux. Configure your Xirp or Herdr provider separately.

Upgrade with `brew upgrade --cask bcook98/tap/trill`, then run `trill stop` and
`trill start` with your usual `--state-dir` to load the new daemon. Restarting
disconnects phone terminals; provider sessions and paired devices are preserved.

Before removing the cask, run `trill uninstall` with your usual `--state-dir`
to remove its LaunchAgents. Your configuration and pairings are retained.

Existing source or standalone installations require an explicit migration;
installing this cask does not replace their saved configuration automatically.

Releases and source: https://github.com/BCook98/trill

Maintainers: after a signed Trill release is published, run the **Update Trill
cask** workflow. It copies the release-generated, checksummed cask using this
repository’s GitHub token; no signing credentials are stored here.
