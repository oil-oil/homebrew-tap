cask "oil-studio" do
  version "0.3.30"
  sha256 "3d91e6e51fb8ed1efb950d382b16b9998779b0304814ed3e31f034edd2488893"

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
