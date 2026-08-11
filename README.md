# Homebrew Tap for pigma

[Homebrew](https://brew.sh) tap for [pigma](https://github.com/akirco/pigma), a NetEase Cloud Music / local audio TUI client.

## Install

```sh
brew tap akirco/pigma
brew install pigma
```

## Notes

- This is a **binary formula**: it downloads the prebuilt release tarball from
  GitHub Releases, so no local compilation is needed.
- Supported architectures:
  - macOS: `aarch64-apple-darwin` (Apple Silicon), `x86_64-apple-darwin` (Intel)
  - Linux: `x86_64-unknown-linux-gnu`
- On Apple Silicon, the Intel binary runs under Rosetta 2 if the ARM tarball is
  missing; prefer installing the native build.

## Updating for a new release

```sh
./update.sh v0.2.7
```

The script fetches the release tarballs, recomputes SHA-256 checksums, and
rewrites `Formula/pigma.rb`. Commit and push afterwards.
