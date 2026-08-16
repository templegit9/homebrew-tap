cask "bridge-ledger" do
  version "0.2.0"
  sha256 "d6e7b98705c32d9b531a57ddf4b1584909cb51b8fd8dc2580ba5e6422c68d9c3"

  # Token is `bridge-ledger`, app is `Bridge.app`.
  #
  # homebrew-cask already has a `bridge` — Quixel Bridge, a 3D asset manager —
  # and the bare token resolves to that one. Keeping the obvious name here would
  # have meant every install command needed the full `templegit9/tap/bridge`,
  # and anyone typing the short form from memory would silently get unrelated
  # software. A distinct token is worth more than a matching one.

  # Hosted on this tap rather than on the source repo, which is private.
  # A cask downloads over plain HTTPS with no credentials, so a release asset
  # behind a private repo is simply unreachable — the install fails with a 404
  # that looks like a broken URL rather than a permissions problem. The tap is
  # public, so the built app lives here and the source stays where it is.
  url "https://github.com/templegit9/homebrew-tap/releases/download/bridge-v#{version}/Bridge-#{version}.zip"
  name "Bridge"
  desc "Hosts coding agents around a shared append-only ledger they cannot forge"
  homepage "https://github.com/templegit9/homebrew-tap"

  # Package.swift targets macOS 14.
  depends_on macos: :sonoma

  app "Bridge.app"

  # Deliberately short.
  #
  # Bridge keeps a session's real state — the ledger, the outboxes, the
  # environment sidecar — inside the project directory the operator chose, not
  # under ~/Library. Those files are the entire point of the app and are the
  # one thing an uninstall must never remove, so nothing here reaches into a
  # session. What is listed is only Bridge's own app-local state: the recents
  # list, window state, and caches.
  zap trash: [
    "~/Library/Preferences/dev.harness.bridge.plist",
    "~/Library/Preferences/dev.harness.bridge.sessions.plist",
    "~/Library/Saved Application State/dev.harness.bridge.savedState",
    "~/Library/Caches/dev.harness.bridge",
  ]

  caveats <<~EOS
    Bridge spawns your own agent CLIs (claude, codex) in real terminals, so it
    ships non-sandboxed and needs them on your login shell's PATH.

    It is Developer ID signed and notarized, and the ticket is stapled — first
    launch needs no network and shows no Gatekeeper warning.
  EOS
end
