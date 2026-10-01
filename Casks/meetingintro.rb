cask "meetingintro" do
  version "2.24.1"
  sha256 "8406c0e4e2c12bd9b55a2e473a12bc2331d5fd83b56b0de0745a21aecba4250e"

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
