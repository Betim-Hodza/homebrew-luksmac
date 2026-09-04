# LuksMac Homebrew Tap

<p align="center">
  <strong>Open LUKS-encrypted ext drives natively on macOS.</strong><br>
  A Developer ID-signed and Apple-notarized LuksMac installer, delivered through Homebrew.
</p>

<p align="center">
  <a href="https://github.com/Betim-Hodza/LuksMac/releases/latest"><img src="https://img.shields.io/github/v/release/Betim-Hodza/LuksMac?display_name=tag&label=release&color=161b22" alt="Latest LuksMac release"></a>
  <img src="https://img.shields.io/badge/macOS-26%2B-161b22?logo=apple&logoColor=white" alt="Requires macOS 26 or later">
  <img src="https://img.shields.io/badge/notarized-Apple-161b22?logo=apple&logoColor=white" alt="Notarized by Apple">
</p>

## Install

```sh
brew install --cask betim-hodza/luksmac/luksmac
```

That three-part name is Homebrew's normal format for a cask in a third-party
tap. It taps this repository automatically and installs the `luksmac` cask.

If you prefer to add the tap once, use the shorter command afterwards:

```sh
brew tap betim-hodza/luksmac
brew install --cask luksmac
```

## Requirements

| Requirement | Details |
| --- | --- |
| Mac | Apple silicon |
| macOS | 26 or later |
| Homebrew | Current stable release |

## What Homebrew installs

- The current notarized Developer ID `.pkg` from the [LuksMac releases](https://github.com/Betim-Hodza/LuksMac/releases)
- Native LUKS1 and LUKS2 support
- Native ext2, ext3, and ext4 filesystem support through macOS FSKit
- The SHA-256-pinned release asset defined in [`Casks/luksmac.rb`](Casks/luksmac.rb)

The app does not make outbound network connections. Homebrew only downloads the
installer when you install or upgrade it.

## Upgrade or remove

```sh
brew upgrade --cask luksmac
brew uninstall --cask luksmac
```

For release notes, checksums, source notices, and support, visit
[LuksMac on GitHub](https://github.com/Betim-Hodza/LuksMac) or
[luksmac.app](https://luksmac.app).

## Brewfile

```ruby
tap "betim-hodza/luksmac"
cask "luksmac"
```
