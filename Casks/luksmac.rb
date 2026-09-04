cask "luksmac" do
  version "1.0.0"
  sha256 "d4dafcff7ca982e646530cd4a0bb4d7817130cd38cc1798f553065d61dfad343"

  url "https://github.com/Betim-Hodza/LuksMac/releases/download/v#{version}/LuksMac-#{version}.pkg"
  name "LuksMac"
  desc "Mount and manage LUKS-encrypted ext filesystems on macOS"
  homepage "https://luksmac.app"

  depends_on macos: :tahoe

  pkg "LuksMac-#{version}.pkg"

  uninstall pkgutil: "com.bay.luksmacos.pkg"
end
