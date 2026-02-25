# homebrew-tap

Homebrew tap for `cap-mind` CLI.

## Install

`cap-mind` release assets are currently private on GitHub, so export a token
with release read access before install:

```bash
export HOMEBREW_GITHUB_API_TOKEN=ghp_xxx
```

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

For private release access in CI, set repository secret:

- `CAP_MIND_GH_TOKEN`: GitHub token with read access to `huyixi/cap-mind`
