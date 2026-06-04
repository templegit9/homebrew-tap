cask "meetingintro" do
  version "2.3.3"
  sha256 "84f6ecd60a58c59c67cfacdc15eb361f2235349bd9baa1fdede030b2c94e84b8"

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
