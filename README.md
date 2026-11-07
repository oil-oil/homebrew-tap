# Oil Oil Homebrew Tap

Official [Homebrew](https://brew.sh) tap for macOS applications built by [Oil Oil](https://studio.oiloil.org/en/).

## Install Oil Studio

```sh
brew tap oil-oil/tap
brew trust oil-oil/tap
brew install --cask oil-oil/tap/oil-studio
```

## Available Casks

| Cask | Description | Requirements | Website |
| :--- | :--- | :--- | :--- |
| `oil-studio` | Native macOS screen recorder and transcript-driven video editor with auto-zoom, on-device Whisper captions, and Claude Code / Codex automation | macOS 15+ (Apple silicon) | [studio.oiloil.org](https://studio.oiloil.org/en/) |

## Upgrade & Uninstall

Oil Studio updates automatically in-app via Sparkle (`auto_updates true`), or via Homebrew:

```sh
brew upgrade --cask oil-oil/tap/oil-studio
```

To uninstall:

```sh
brew uninstall --cask oil-oil/tap/oil-studio
```
