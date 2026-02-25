# homebrew-tap

Homebrew tap for `cap-mind` CLI.

## Install

```bash
brew tap huyixi/tap
brew install cap-mind
```

## Binary names

The formula installs:

- `cap` (primary executable)
- `cap-mind` (symlink to `cap`)

## Verify

```bash
cap --version
cap-mind --version
```

## Upgrade

```bash
brew update
brew upgrade cap-mind
```

## Current platform support

- macOS arm64 (Apple Silicon)

`cap-macOS` in upstream release `cli-v0.2.4` is arm64-only.

## Auto update workflow

This repo includes `.github/workflows/update-cap-mind.yml` to open/update a PR
that bumps `Formula/cap-mind.rb` from the latest `huyixi/cap-mind` release.
