# homebrew-tap
Homebrew tap for MeetingIntro and other apps

## Casks

```sh
brew tap templegit9/tap
```

| Cask | What it is |
|---|---|
| `bridge` | Hosts coding agents around a shared append-only ledger they cannot forge |
| `meetingintro` | Menu bar app that plays a countdown overlay before calendar meetings |
| `speech2terminal` | Dictation straight into the terminal |

Bridge's build is released from this repository rather than its own, because
its source repository is private and a cask downloads over plain HTTPS with no
credentials.
