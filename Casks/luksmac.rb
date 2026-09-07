cask "luksmac" do
  version "1.0.2"
  sha256 "4de2ac35ab028139d8702ebfc86386327b9c20f6b20a69c9ce175eab5684ebfc"

  url "https://github.com/Betim-Hodza/luksmac-releases/releases/download/v#{version}/LuksMac-#{version}.pkg"
  name "LuksMac"
  desc "Mount and manage LUKS-encrypted ext filesystems"
  homepage "https://luksmac.app/"

  depends_on macos: :tahoe

  pkg "LuksMac-#{version}.pkg"

  uninstall pkgutil: "com.bay.luksmacos.pkg"
end
