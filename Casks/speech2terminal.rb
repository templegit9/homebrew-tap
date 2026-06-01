cask "speech2terminal" do
  version "0.1.0"
  sha256 "61dc008f514f6774faa9bc6bc5cd05ff5c097b47690d60c0fe7b02f08b03f184"

  url "https://github.com/templegit9/speech2terminal/releases/download/v#{version}/speech2terminal-#{version}.zip"
  name "speech2terminal"
  desc "Voice-driven terminal dictation (local MLX Whisper)"
  homepage "https://github.com/templegit9/speech2terminal"

  depends_on macos: ">= :ventura"

  app "speech2terminal.app"

  zap trash: [
    "~/.config/speech2terminal",
    "~/Library/Caches/com.oluyinka.speech2terminal",
  ]
end
