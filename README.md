# homebrew-tap

Homebrew tap for `capmind` CLI.

## Install

```bash
brew tap huyixi/tap
brew install capmind
```

## Binary names

The formula installs:

- `cap` (primary executable)
- `capmind` (symlink to `cap`)

## Verify

```bash
cap --version
capmind --version
```

## Upgrade

```bash
brew update
brew upgrade capmind
```

## Current platform support

- macOS arm64 (Apple Silicon)

`cap-macOS` in upstream release `cli-v0.2.4` is arm64-only.

## Auto update workflow

This repo includes `.github/workflows/update-capmind.yml` to open/update a PR
that bumps `Formula/capmind.rb` from the latest `huyixi/capmind` release.
