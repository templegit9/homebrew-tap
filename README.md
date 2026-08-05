# homebrew-tap
Homebrew tap for MeetingIntro and other apps

## Casks

```sh
brew tap templegit9/tap
```

| Cask | What it is |
|---|---|
| `bridge-ledger` | Hosts coding agents around a shared append-only ledger they cannot forge |
| `meetingintro` | Menu bar app that plays a countdown overlay before calendar meetings |
| `speech2terminal` | Dictation straight into the terminal |

```sh
brew trust --cask templegit9/tap/bridge-ledger
brew install --cask bridge-ledger
```

Homebrew 6 refuses to load a cask from a third-party tap until it is trusted,
and trust is recorded per cask rather than per tap — so each of the casks here
needs its own `brew trust` line.

The app is called Bridge; the cask token is `bridge-ledger` because
homebrew-cask already has a `bridge` (Quixel Bridge), and a matching name is
worth less than one that cannot install the wrong software by accident.

Its build is released from this repository rather than its own, because the
source repository is private and a cask downloads over plain HTTPS with no
credentials.
