cask "meetingintro" do
  version "2.23.1"
  sha256 "e3e9f9ed3e3f85f894aef2ca19560ea746052d34be79c59218f2c6e88a5f69d0"

  url "https://github.com/templegit9/MeetingIntro/releases/download/v#{version}/MeetingIntro-#{version}.zip"
  name "MeetingIntro"
  desc "Menu bar app that plays a countdown overlay before calendar meetings"
  homepage "https://github.com/templegit9/MeetingIntro"

  depends_on macos: :sonoma

  app "MeetingIntro.app"

  zap trash: [
    "~/Library/Preferences/com.oluyinka.MeetingIntro.plist",
    "~/Library/Application Support/MeetingIntro",
    "~/Library/Caches/com.oluyinka.MeetingIntro",
  ]
end
