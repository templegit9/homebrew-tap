cask "meetingintro" do
  version "2.1.0"
  sha256 "07818710de423762b63d6dc2e7600c9c0d167682b1e872a17c1d5886b4aea7fb"

  url "https://github.com/templegit9/MeetingIntro/releases/download/v#{version}/MeetingIntro-#{version}.zip"
  name "MeetingIntro"
  desc "Menu bar app that plays a countdown overlay before calendar meetings"
  homepage "https://github.com/templegit9/MeetingIntro"

  depends_on macos: ">= :sonoma"

  app "MeetingIntro.app"

  zap trash: [
    "~/Library/Preferences/com.oluyinka.MeetingIntro.plist",
    "~/Library/Application Support/MeetingIntro",
    "~/Library/Caches/com.oluyinka.MeetingIntro",
  ]
end
