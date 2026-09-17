cask "luksmac" do
  version "1.0.3"
  sha256 "612ff6212deec0d6d52a0948e7317e86c975bb5dc7eaa4bbf16d90a6239077a2"

  url "https://github.com/Betim-Hodza/luksmac-releases/releases/download/v#{version}/LuksMac-#{version}.pkg"
  name "LuksMac"
  desc "Mount and manage LUKS-encrypted ext filesystems"
  homepage "https://luksmac.app/"

  depends_on macos: :tahoe

  pkg "LuksMac-#{version}.pkg"

  uninstall pkgutil: "com.bay.luksmacos.pkg"
end
