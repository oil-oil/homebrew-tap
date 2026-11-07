cask "oil-studio" do
  version "0.3.26"
  sha256 "5419dfa6d3c8dcd79a2f1a60b4ac8e40e81a2420ca68f0be8c0e0f5b12c50954"

  url "https://download.oiloil.org/studio/OilStudio-#{version}.dmg"
  name "Oil Studio"
  desc "Screen recorder and transcript-driven video editor"
  homepage "https://studio.oiloil.org/en/"

  livecheck do
    url "https://download.oiloil.org/studio/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Oil Studio.app"

  zap trash: [
    "~/Library/Application Support/com.oiloil.studio",
    "~/Library/Application Support/Oil Studio",
    "~/Library/Caches/com.oiloil.studio",
    "~/Library/HTTPStorages/com.oiloil.studio",
    "~/Library/Preferences/com.oiloil.studio.plist",
    "~/Library/Saved Application State/com.oiloil.studio.savedState",
  ]
end
