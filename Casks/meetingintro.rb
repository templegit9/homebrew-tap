cask "meetingintro" do
  version "2.0.4"
  sha256 "b7c958c7a142d0f3cf3ed7239942db2c8e656320dfd89a659589a592e1326c31"

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
